class BlogpostsController < ApplicationController

  def index
  end

  def new
    @blogpost = Blogpost.new
    @content = Content.new
  end

  def create
  end

  def destroy
  end

end
