class BlogpostsController < ApplicationController

  def index
    @blogposts = Blogpost.all
    @contents = Content.all
  end

  def new
    @blogpost = Blogpost.new
    @content = Content.new
  end

  def create

    @blogpost = Blogpost.new(blogpost_params)
    @blogpost.user = current_user
    @content = Content.new
    @content.user = current_user
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

  # def content_params

  #   # params.require(:content).permit(:title, :content, :stack)
  # end
end
