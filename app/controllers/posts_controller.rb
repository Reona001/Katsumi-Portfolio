class PostsController < ApplicationController

  def new
    @post = Post.new
    @posts = Post.all
    @blogpost = Blogpost.find(params[:format])

  end

  def create
    # @blogpost = Blogpost.find(params[:format])
    @post = Post.new(post_params)
    # session[:blogpost_id] = @post.blogpost_id
    @blogpost = @post.blogpost_id
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
