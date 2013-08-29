class RsvpsController < ApplicationController

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(params[:rsvp])
    if @rsvp.save
      flash[:notice] = "RSVP has been added."
      redirect_to @rsvp
    else
      #TBD
    end
  end

  def show

  end
end
