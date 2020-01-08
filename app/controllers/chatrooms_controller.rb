class ChatroomsController < ApplicationController
  before_action :require_user

  def chat_index
    @message = Message.new
    @messages = Message.all
  end
end
