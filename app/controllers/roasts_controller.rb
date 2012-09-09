class RoastsController < ApplicationController
	def show
		@roast = Roast.find params[:id]
		if @roast.started?
			render :action => "live"
		else
			render :action => "upcoming"
		end
	end

  def new
    @roast = Roast.new
  end
  
  def create
    @roast = Roast.create(params[:roast])
    respond_to do |format|
      if @roast.save
     
      	format.html { redirect_to @roast, :notice => 'Roast has been created.' }
        format.json { render :json => @roast, :status => :created, :location => @roast }
      else
      	format.html { render :action => "new" }
        format.json { render :json => @roast.errors, :status => :unprocessable_entity }
      end
    end
  end
end
