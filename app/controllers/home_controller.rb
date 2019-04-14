class HomeController < ApplicationController
  def index
    @users = User.all
    @offerings = Offering.all
    if current_user
      if current_user.superior != nil
        @superior = User.find(current_user.superior)
      else
        @superior = ''
      end
    end
  end

  def credits
  end
  
end
