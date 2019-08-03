class DetailsController < BaseController
  before_action :set_detail, only: [:show,:edit,:update,:destroy]

  def show
  	@detail = current_mypage.detail
  end

  def new
    #@mypage = Mypage.new
    @detail = current_mypage.build_detail
  end

 def create
    #@mypage = Mypage.new(mypage_params)
    @detail = current_mypage.build_detail(detail_params)
    if @detail.save
        redirect_to detail_path
    else
        render 'new'
    end
  end

  def edit
    @current_mypage_detail
  end

 def update
    #@mypage_detail = @current_mypage_detail
    if @detail.update(detail_params)
       redirect_to detail_path
    else
       render 'edit'
    end
 end

 def destroy
    @detail.destroy
    redirect_to detail_path
 end


 private
 def set_detail
   @detail = current_mypage.detail
   if @detail.blank?
     redirect_to detail_path
     return false
   end
 end

 def detail_params
  params.require(:detail).permit(
    :main_picture, #メイン写真
    :sub_picture_1, #サブ写真
    :sub_picture_2, #サブ写真
    :sub_picture_3, #サブ写真
    :sub_picture_4, #サブ写真
    #職務経歴書
    :graduate_date, #卒業年月日
    :graduate_school, #卒業学校名

    :enter_date_1, #入社年月日
    :work_1, #企業名
    :position_1, #役職
    :retirement_date_1, #退社日
    :enter_date_2, #入社年月日
    :work_2, #企業名
    :position_2, #役職
    :retirement_date_2, #退社日
    :enter_date_3, #入社年月日
    :work_3, #企業名
    :position_3, #役職
    :retirement_date_3, #退社日
    :enter_date_4, #入社年月日
    :work_4, #企業名
    :position_4, #役職
    :retirement_date_4, #退社日
    :enter_date_5, #入社年月日
    :work_5, #企業名
    :position_5, #役職
    :retirement_date_5, #退社日
    :comment, #意気込み
    #other
    :beauty_license, #美容師免許
    :drive_license, #運転免許証
    :history, #美容師歴
    :age #年齢
    )
  end
end
