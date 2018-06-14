class BlogPostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :delete, :pdf]

  before_action :only_allow_post_owner, only: [:edit, :update, :delete]

  def index
    @posts = BlogPost.page(params[:page]).per(25)
    # example of cookie overflow:
    # flash[:notice] = Faker::Lorem.paragraph * 1000
  end # #index
  
  def new
    @post = BlogPost.new
  end # #new

  def create
    @post = BlogPost.new(permitted_params)
    @post.user = current_user
    if @post.save
      redirect_to @post
    else
      flash[:alert] = @post.errors.full_messages
      render :new
    end
    
  end # #create

  def show
    render :show
    # FIXME Mine Type Error (maybe bug in rails)
    #respond_to do |format|
      #format.html 
      #format.json { render json: @post }
      #format.yaml { render raw: @post.to_yaml }
      #format.pdf  { send_data(@post.to_pdf.read) }
    #end
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
    send_data file.read, type: 'application/pdf', disposition: 'inline'
  end # #pdf

  protected
  def set_post
    @post = BlogPost.find(params[:id])
  end # #set_post

  def only_allow_post_owner
    if @post.user != current_user
      redirect_to blog_posts_path
    end
  end # #only_allow_post_owner

  def permitted_params
  params.require(:blog_post).permit(:title, :body, :public, :image)
  end # #permitted_params
end
