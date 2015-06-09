class EventsController < ApplicationController
  def new
    if current_user
      @event = User.find(current_user).events.new
    else
      flash[:notice] = "Login to create an event."
      redirect_to login_path
    end
  end

  def create
    user = User.find(current_user)
    @event = user.events.new(event_params)
    @event.save
    redirect_to user
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    def event_params
      params.require(:event).permit(:location, :date)
    end
end
