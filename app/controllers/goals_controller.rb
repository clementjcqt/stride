class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    @event = Event.find(params[:event_id])
  end

  def show
    @goal = Goal.find(params[:id])
    @event = Event.find(@goal.event_id)
    @goal_hours = (@goal.goal_time / 60)
    @goal_minutes = @goal.goal_time % 60

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
    params.require(:goal).permit(:start_date, :goal_time, :max_time_per_day)
  end
end
