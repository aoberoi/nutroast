class StoriesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @roast = Roast.find params[:roast_id]
    @story = Story.new
  end

  def create
    @roast = Roast.find params[:roast_id]
    @story = Story.create params[:story]
    respond_to do |format|
      if @story.save
        format.html { redirect_to roast_path(@roast), :notice => 'Story have been created.' }
        format.json { render :json => @roast, :status => :created, :location => @roast }
      else
      	format.html { render :action => "new" }
        format.json { render :json => @story.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
  end

end
