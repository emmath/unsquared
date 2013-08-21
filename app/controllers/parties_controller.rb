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
      #TBD
    end
  end

  def show
    @party = Party.find(params[:id])
  end

end
