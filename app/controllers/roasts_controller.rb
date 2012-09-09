class RoastsController < ApplicationController
	def show
		@roast = Roast.find params[:id]
	end

  def new
    @roast = Roast.new
  end  
end
