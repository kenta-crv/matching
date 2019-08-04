class LikesController < ApplicationController
  def create
    @like = current_user.companies.create(company_id: params[:company_id])
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(company_id: params[:company_id], user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end
end
