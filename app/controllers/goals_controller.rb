class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    @event = Event.find(params[:event_id])
  end

  def create
    @goal = Goal.new(set_goal_params)
    @goal.user = current_user
    @goal.event = Event.find(params[:event_id])
    if @goal.save
      redirect_to event_goal_path(@goal.event, @goal)
    else
      render 'new'
    end
  end

  private

  def set_goal_params
    params.require(:goal).permit(:start_date, :goal_time, :max_time_per_day, :goal_hours, :goal_minutes)
  end
end
