class AttendsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @attend = @event.attends.create(attend_params)
    
    redirect_to event_path(@event)
  end

  private
  def attend_params
    params.require(:attend).permit(:attend_type, :comment)
  end
end
