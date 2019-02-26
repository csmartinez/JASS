class HomeController < ApplicationController
  def index
    @users = User.all
    @offerings = Offering.all
  end
end
