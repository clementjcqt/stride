class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    @event = Event.find(params[:event_id])
  end

  def create
    @goal = Goal.new(params[:goal])
    if @goal.save
      flash[:success] = "Object successfully created"
      redirect_to programs_path(@goal)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
end
