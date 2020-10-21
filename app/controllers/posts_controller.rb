class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @posts = Post.page params[:page]
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if (@post.save)
      flash[:success] = "Your post was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
