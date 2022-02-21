class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(params[:name])
    @chatroom.user = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new
    end
  end

  def index
    @chatrooms = Chatroom.all
    @current_user = current_user
    redirect_to '/users/sign_in' unless @current_user
  end
end
