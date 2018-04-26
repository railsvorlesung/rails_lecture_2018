class PostsController < ApplicationController

  def index
    @posts = BlogPost.page params[:page]
  end # #index

  def show
    @post = BlogPost.find(params[:id])
    
  end # #show
end
