class MypagesController < BaseController
  before_action :set_mypage, except: [:new, :create]
  def list
    @company = Company.all
  end

  def show
  	@mypage = current_user.mypage
    #session[:mypage_id] = @mypage.id
    #@relationship = Relationship.new
  end

  def new
    #@mypage = Mypage.new
    @mypage = current_user.build_mypage
  end

  def create
    @mypage = current_user.build_mypage(mypage_params)
    if @mypage.save
        redirect_to mypage_path
    else
        render 'new'
    end
  end

  def edit
    #@mypage = Mypage.find(params[:id])
    @mypage = @current_mypage
  end

 def update
    #@mypage = Mypage.find(params[:id])
    @mypage = @current_mypage
    if @mypage.update(mypage_params)
       redirect_to mypage_path
    else
       render 'edit'
    end
 end

 #def destroy
  #  @mypage = Mypage.find(params[:id])
    #@mypage = current_mypage
  #  @mypage.destroy
   #  redirect_to mypage_path
 #end

 #def set_company
  # @current_mypage = current_user.mypage
   #if @current_mypage.blank?
    # redirect_to new_mypage_path
     #return false
  # end
 #end

 #def current_mypage
  # @current_mypage
 #end

 private
 def mypage_params
  params.require(:mypage).permit(
        :first_name, #苗字
        :last_name, #名前
        :first_kana, #ミョウジ
        :last_kana, #ナマエ
        :tel, #電話番号
        :postnumber, #郵便番号
        :prefecture, #都道府県（全角）
        :city, #市町村（全角）
        :town, #市町村以降（全角）
        :town_number, #番地（全角）
        :building #マンション名
       )
  end
end
