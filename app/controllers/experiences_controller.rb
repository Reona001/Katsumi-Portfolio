class ExperiencesController < ApplicationController
  before_action :find_experience, only: [:show, :edit, :update, :destroy]

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  def show; end

  def index
    @experiences = Experience.all
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Profile Updated!'
    else
      render :new
    end
  end

  def destroy
    @experience.destroy
    redirect_to experiences_path, notice: 'Experience Removed!'
  end

  private

  def find_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:title, :description, :date, :status, :skills)
  end
end
