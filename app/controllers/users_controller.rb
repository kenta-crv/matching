class UsersController < ApplicationController
  before_action :authenticate_user! || :authenticate_admin!

  def list
    @companies = Company.page(params[:page]).per(99).order(:id)
    @like = Like.new
    
    ## list.html.slimに @userを使っているのに定義していない
  end

  def show
    @user = current_user
    @like = Like.new
    @currentUserEntry = Entry.where(user_id: current_user.id)
    @userEntry = Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
    @user = current_user
  end

 def update
    @user = current_user
    if @user.update(user_params)
       redirect_to user_path
    else
       render 'edit'
    end
 end

 private
 def user_params
  params.require(:user).permit(
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
        :building, #マンション名
        #写真
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
