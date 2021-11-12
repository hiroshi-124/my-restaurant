class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  
  def index
    @posts = Post.all.order(id: "DESC")
  end
  
  def show
  end
  
   private
    def set_post
      @post = Post.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
