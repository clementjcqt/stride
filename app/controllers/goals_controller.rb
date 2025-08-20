class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    @goal.event = @event
  end

  def create
    @goal = Goal.new(params[:goal])
    if @goal.save
      flash[:success] = "Object successfully created"
      redirect_to @goal
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

end
