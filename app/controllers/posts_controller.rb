class PostsController < ApplicationController
  def index
    @posts = BlogPost.page params[:page]
  end # #index

  def show
    @post = BlogPost.find(params[:id])
    
    flash[:notice] = [
      'Successfully',
      'Successfully 2',
      'Successfully 3'
    ]
    redirect_to posts_url
  end # #show
end
