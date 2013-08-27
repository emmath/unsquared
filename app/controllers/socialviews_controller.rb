class SocialviewsController < ApplicationController

  def new
    @socialview = Socialview.new
  end

  def create
    @socialview = Socialview.new(params[:socialview])
    if @socialview.save
      flash[:notice] = "Tag has been added."
      redirect_to @socialview
    else
      #TBD
    end
  end

  def show
    @socialview = Socialview.find(params[:id])
    @images = @socialview.images
  end
end
