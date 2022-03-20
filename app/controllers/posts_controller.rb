class PostsController < ApplicationController

  def new
    @blogpost = Blogpost.find(params[:format])
    @post = Post.new
    @posts = Post.all
  end

  def create
    @blogpost = Blogpost.find(params[:format])
    @post = Post.new(post_params)
    if @post.save
      # @post.user = current_user
      redirect_to new_blogpost_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:sectiontitle, :content, :blogpost_id)
  end

end
