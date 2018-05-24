class BlogPostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :delete, :pdf]

  def index
    @posts = BlogPost.page params[:page]
    # example of cookie overflow:
    # flash[:notice] = Faker::Lorem.paragraph * 1000
  end # #index
  
  def new
    @post = BlogPost.new
  end # #new

  def create
    @post = BlogPost.new(permitted_params)
    if @post.save
      redirect_to @post
    else
      flash[:alert] = @post.errors.full_messages
      render :new
    end
    
  end # #create

  def show
    respond_to do |format|
      #format.html { render }
      format.json { render json: @post }
      format.yaml { render raw: @post.to_yaml }
      format.pdf  { send_data(@post.to_pdf.read) }
    end
  end # #show

  def edit
  end # #edit

  def update
    if @post.update_attributes(permitted_params)
      flash[:notice] = t('success')
      redirect_to edit_blog_post_path(@post)
    else
      flash[:alert] =  @post.errors.full_messages
      render :edit
    end
  end # #update


  def pdf
    file =  @post.to_pdf
    send_data file.read, type: 'application/pdf'
  end # #pdf

  protected
  def set_post
    @post = BlogPost.find(params[:id])
  end # #set_post

  def permitted_params
  params.require(:blog_post).permit(:title, :body, :public, :image)
  end # #permitted_params
end
