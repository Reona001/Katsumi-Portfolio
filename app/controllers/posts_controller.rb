class PostsController < ApplicationController

  def new
    @post = Post.new
    @posts = Post.all
    @blogpost = Blogpost.find(params[:format])

  end

  def create
    @post = Post.new(post_params)
    @blogpost = @post.blogpost_id
    if @post.save
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
