class StoriesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @story = Story.new
  end

  def create
  end

  def show
  end

end
