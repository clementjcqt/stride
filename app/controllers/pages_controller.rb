class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = current_user

    @program = @user.programs.order(created_at: :desc).first
    @next_session = @program&.sessions&.order(:date)&.where("date >= ?", Date.today)&.first
    @favorite_events = @user.favorite_events.limit(3)
  end
end
