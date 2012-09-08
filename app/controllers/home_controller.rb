class HomeController < ApplicationController
  def index
    @users = User.all
    @roasts = Roast.all
  end
end
