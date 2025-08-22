class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def toggle_favorite
    @event = Event.find(params[:id])

    favorite = current_user.favorites.find_by(event: @event)

    if favorite
      favorite.destroy
    else
      current_user.favorites.create(event: @event)
    end

    respond_to do |format|
      format.html { redirect_to events_path }
      format.js
    end
  end
end
