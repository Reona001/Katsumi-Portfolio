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
    @user = current_user
    @blogpost = Blogpost.create!(title: 'Title', description:'Description', user: @user)
    @content = Content.create!(user: @user, title: 'Title', content: 'Content', stack: 'Stack')
    @blogpost = Blogpost.new(blogpost_params, @content.content_id)
    @blogpost.user = current_user


    # @content.user = current_user
    # @content = Content.new(content_params)
    # @content.user = current_user

    if @blogpost.save && @content.save
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
