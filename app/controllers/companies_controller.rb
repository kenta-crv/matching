class CompaniesController < ApplicationController
  #before_action :set_company, except: [:new, :create]
  def list
    @users = User.all
    @like = Like.new
  end

  def show
  	@company = current_company
    @like = Like.new
  end

  def edit
    @company = current_company
  end

 def update
    @company = current_company
    if @company.update(company_params)
       redirect_to company_path
    else
       render 'edit'
    end
 end

 private
 def company_params
  params.require(:company).permit(
        :company, #苗字
        :store, #苗字
        :agree_check, #同意
        :first_name, #苗字
        :last_name, #名前
        :first_kana, #ミョウジ
        :last_kana, #ナマエ
        :tel, #電話番号
        :mobile_phone,
        :e_mail, #メールアドレス
        :postnumber, #郵便番号
        :prefecture, #都道府県（全角）
        :city, #市町村（全角）
        :town, #市町村以降（全角）
        :town_number, #番地（全角）
        :building, #マンション名
        :beauty_license, #美容師免許
        :drive_license, #運転免許証
        :history, #美容師歴
        :age,
        :picture,
        :sub_picture_1,
        :sub_picture_2,
        :sub_picture_3,
        :sub_picture_4,
        :username
       )
  end
end
