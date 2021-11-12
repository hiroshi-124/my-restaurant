class Dashboard::PostsController < ApplicationController
  layout 'dashboard/dashboard'
  before_action :authenticate_admin!
  before_action :set_post, only: %i[show edit update destroy]
  
  def index
    @posts = Post.all.order(id: "DESC")
  end
  
  def show
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to dashboard_posts_path, notice: 'Posts was successfully created.'
    end
  end
  
  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to dashboard_posts_path, notice: 'Post was successfully updated.'
    end
  end

  def destroy
    @post.destroy
    redirect_to dashboard_posts_url, notice: 'Post was successfully destroyed.'
  end
  
   private
    def set_post
      @post = Post.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
