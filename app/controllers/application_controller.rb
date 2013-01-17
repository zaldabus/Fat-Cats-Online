class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  protect_from_forgery

  def current_user
  	@current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
  	!!current_user
  end

  def require_user
  	if !logged_in?
      flash[:error]  = "You must be logged in to access this page!"
  		redirect_to root_path
  	end
  end
end
