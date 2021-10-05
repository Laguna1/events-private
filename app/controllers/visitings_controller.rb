class VisitingsController < ApplicationController
  def join_event
    @visiting = Visiting.new(event_id: params[:id], user_id: current_user.id)
    if @visiting.save
        redirect_to events_path
    else
        # render new
    end
  end
end
