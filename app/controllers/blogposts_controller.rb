class BlogpostsController < ApplicationController

  def index
    @blogposts = Blogpost.all
  end

  def new
    @blogpost = Blogpost.new
    @blogposts = Blogpost.all
    @posts = @blogposts.posts.all
    # @post = Post.new
    # @posts = Post.all
    @assignments = Assignment.all
  end

  def create
    @user = current_user
    @blogpost = Blogpost.new(blogpost_params)
    @blogpost.user = current_user

    # @content.user = current_user
    # @content = Content.new(content_params)
    # @content.user = current_user
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
end
