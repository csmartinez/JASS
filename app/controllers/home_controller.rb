class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @users = User.all
    render :edit
  end
end
