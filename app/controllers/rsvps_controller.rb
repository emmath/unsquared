class RsvpsController < ApplicationController

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.create(params[:rsvp].merge( user_id: current_user.id))
    if @rsvp.save
      flash[:notice] = "RSVP has been added."
      redirect_to @rsvp
    else
      #TBD
    end
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end
end
