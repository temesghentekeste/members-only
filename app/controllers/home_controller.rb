class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @posts = Post.page params[:page]
  end
end
