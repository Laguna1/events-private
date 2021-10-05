class VisitingsController < ApplicationController
  def join_event
    unless Visiting.all.exists?(user_id: current_user.id)
      @visiting = Visiting.new(event_id: params[:id], user_id: current_user.id)
      @visiting.save
      redirect_to events_path

    end
  end
end
