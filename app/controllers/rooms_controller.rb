class RoomsController < ApplicationController
  before_action :authenticate_user! || :authenticate_company!
  def create
    @room = Room.create
    @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id, :company_id => current_company.id)
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :company_id, :room_id).merge(:room_id => @room.id))
    redirect_to "/rooms/#{@room.id}"
  end

  def show
    @room = Room.find(params[:id])
    if Entry.where(:user_id => currrent_user.id, :company_id => current_company.id, :room_id => @room_id).present?
      @messages = @room.messages
      @message = Message.new
      @entries = @room.entries
    else
      redirect_to root_path
    end
  end

end
