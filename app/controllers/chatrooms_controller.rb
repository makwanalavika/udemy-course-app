class ChatroomsController < ApplicationController
  def chat_index
    @messages = Message.all
  end
end
