class PartiesController < ApplicationController

  def index
    @parties = Party.all
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(params[:party])
    if @party.save
      flash[:notice] = "Party has been created."
      redirect_to @party
    else
      flash[:alert] = "Party has not been created"
      render :action => "new"
    end
  end

  def show
    @party = Party.find(params[:id])
  end

  def edit
    @party = Party.find(params[:id])
  end

  def update
    if @party.update_attributes(params[:party])
        flash[:notice] = "Party has been updated."
        redirect_to @party
      else
        flash[:alert] = "Party has not been updated."
        render :action => "edit"
      end
  end

  def socialview
    @socialview = Socialview.find(params[:id])
    @images = @socialview.images
  end
end
