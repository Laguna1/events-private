class VisitingsController < ApplicationController
  def join
    @visiting = Visiting.new(event_id: params[:id], user_id: current_user.id)
    @visiting.save
    redirect_to events_path
  end
end
