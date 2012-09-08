class RoastsController < ApplicationController
	def show
	end

  def new
    @roast = Roast.new
  end  
end
