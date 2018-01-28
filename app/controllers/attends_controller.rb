class AttendsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @attend = @event.attends.new(attend_params)
    user = User.find(1)
    @attend.user = user
    @attend.save
    
    redirect_to event_path(@event)
  end

  private
  def attend_params
    params.require(:attend).permit(:attend_type, :comment)
  end
end
