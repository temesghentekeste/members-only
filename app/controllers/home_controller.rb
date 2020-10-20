class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]  

  def index
    @posts=Post.all
  end
end
