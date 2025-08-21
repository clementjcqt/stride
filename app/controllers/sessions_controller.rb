class SessionsController < ApplicationController
  def show
    @program = Program.find(params[:program_id])
    @session = @program.sessions.find(params[:id])
  end
end
