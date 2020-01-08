class SessionsController < ApplicationController
  before_action :redirect_to_logged_in, only: [:new, :create]
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'successfully logged in'
      redirect_to :controller => 'chatrooms', :action => 'chat_index'

      #redirect_to users_path
    else
      flash.now[:error] = 'There was something wrong with your login information'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'successfully logged out'
    redirect_to new_path
  end

  def redirect_to_logged_in
    if logged_in?
      flash[:error] = 'You are already logged in'
    end
  end
end
