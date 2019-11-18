class PostsController < ApplicationController
  before_action :move_to_index, except: [:index]
  def index
    @posts = Post.all.order("created_at DESC")
  end
  def new
    @post = Post.new
  end
  def create
    Post.create(post_params)
  end
  def edit
    
  end
  def destroy
    post = Post.find(params[:id])
    post.destroy
  end
  private
  def post_params
    params.require(:post).permit(:score, :subject)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
