class InvitationsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])
    if user
      @event = Event.find(params[:event_id])
      @event.invitations.create(user_id: user.id)

      redirect_to user
    else
      flash[:notice] = "Not a valid user"
      redirect_to event_path(params[:event_id])
    end
  end
end
