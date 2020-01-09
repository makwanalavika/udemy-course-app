class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.custome_display
  end
end
