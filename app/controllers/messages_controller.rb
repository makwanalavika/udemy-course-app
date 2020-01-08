class MessagesController < ApplicationController
  def index

   end
  def create
    @message = Message.new(body: params[:message], user: current_user)
    if @message.save
      # render 'chat_index'
    end
  end
  private
    def message_params
      params.require(:message).permit(:body)
    end
end
