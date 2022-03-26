class BlogpostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @blogposts = Blogpost.all
  end

  def show
    @blogpost = Blogpost.find(params[:id])
    # @blogpost.posts = @posts
    # @assignments = Assignment.all
    # @post = Post.new
    # @posts = Post.all.find_by(@blogpost.id)
  end

  def new
    @blogpost = Blogpost.new
    @blogposts = Blogpost.all
    # @blogpost.posts = @posts

    @post = Post.new
    @posts = Post.all.find_by(@blogpost.id)
  end

  def create
    @user = current_user
    @blogpost = Blogpost.new(blogpost_params)
    @blogpost.user = current_user

    if @blogpost.save
      redirect_to blogposts_path
    else
      render :new
    end
  end

  def destroy; end

  private

  def blogpost_params
    params.require(:blogpost).permit(:title, :description, :content_id)
  end

  # def post_params
  #   params.require(:post).permit(:blogpost_id)
  # end
end
