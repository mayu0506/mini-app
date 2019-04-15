class BlogsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @blogs = Blog.order("created_at DESC").page(params[:page]).per(4)
  end

  def new
  end

  def create
    Blog.create(text: blog_params[:text],user_id:current_user.id)
  end

  private
  def blog_params
    params.permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
