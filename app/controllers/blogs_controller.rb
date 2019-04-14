class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all
  end

  def new
  end

  def create
    Blog.create(blog_params)
  end

  private
  def blog_params
    params.permit(:text)
  end
  
end
