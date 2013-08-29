class PartiesController < ApplicationController

  def index
    @parties = Party.all
    @show_background = "home"
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.create(params[:party])
    if @party.save
      flash[:notice] = "Woohoo! Your party has been created!"
      redirect_to @party
    else
      flash[:alert] = "Whoops, party has not been created."
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
    @party = Party.find(params[:id])
    if @party.update_attributes(params[:party])
      flash[:notice] = "Congrats! Your party has been updated."
      redirect_to @party
    else
      flash[:alert] = "Whoops, party has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    flash[:notice] = "Awww, Party has been deleted."
    redirect_to parties_path
  end

  def socialview
    @socialview = Socialview.find(params[:id])
    @images = @socialview.images
  end
end
