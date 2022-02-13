class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
    @user = current_user
  end

  def new
    @project = Project.new
  end

  def show; end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: 'Project Created!'
    else
      render :new
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: 'Project Removed!'
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :created, :created_by, :stack_used, :url, :git_repo_url)
  end
end
