class MessagesController < ApplicationController
  before_action :authenticate_user! || :authenticate_company!
  def create
    if Entry.where(:user_id => current_user.id, :company_id => current_company.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :company_id, :content, :rood_id).merge(:user_id => current_user.id, :company_id => current_company.id))
      redirect_to "/rooms/#{@message.room_id}"
    else
      redirect_to root_path
    end
  end

end
