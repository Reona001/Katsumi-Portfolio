class ApplicationController < ActionController::Base
  # @user = current_user
  # protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
end
