class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in(user)
    else
      render 'new'
    end
  end

  #log_out and log_in defined in application_controller.rb

  def destroy
    # session[:user_id] = nil
    log_out if logged_in?
    redirect_to root_path, notice: "Logged out"
  end

end
