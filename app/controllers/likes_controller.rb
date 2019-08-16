class LikesController < ApplicationController
  def create
   if current_user.present?
     @like = current_user.likes.create(company_id: params[:company_id])
     if @like.save!
       redirect_to user_list_path, notice: "いいねしました"
     end
   elsif current_company.present?
     @like = current_company.likes.create(user_id: params[:user_id])
     if @like.save!
       redirect_to company_list_path, notice: "いいねしました"
     end
   else
       redirect_to root_path, notice:  "失敗しました。"
   end
  end

  def destroy
            if current_user.present?
              @like = Like.find_by(company_id: params[:company_id], user_id: current_user.id)
            elsif current_company.present?
              @like = Like.find_by(user_id: params[:user_id], company_id: current_company.id)
              @like.destroy
            else
              redirect_to root_path
            end
   end
end
