class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def logged_in?
    !!current_user
  end
  def require_user
    if !logged_in?
      flash[:danger] = 'You should log in first'
      #redirect_to root_path
      redirect_to new_path
    end
  end
end
