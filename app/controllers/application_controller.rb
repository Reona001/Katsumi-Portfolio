class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :current_user

  # def current_user
  #   if session[:user_id]
  #     @current_user = User.find(session[:user_id])
  #   end
  # end

  def log_in(user)
    session[:user_id] = user.id
    @current_user = user
    redirect_to root_path
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # @user = current_user
  # protect_from_forgery with: :exception
  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  # helper_method :current_user

  # def authorize
  #   redirect_to '/users/sign_up' unless current_user
  # end
end
