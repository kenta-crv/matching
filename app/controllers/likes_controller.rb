class LikesController < ApplicationController
  def create
    @like = current_user.managements.create(management_id: params[:management_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(management_id: params[:management_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
