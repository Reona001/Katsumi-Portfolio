class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def show
    # @chatroom = Chatroom.find(params[:id])
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Profile Updated!'
    else
      render :edit
    end
  end

  def blog
  end

  private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:username, :image, :photo)
  end

end
