class AddReferenceToProgram < ActiveRecord::Migration[7.1]
  def change
    add_reference :programs, :goal
  end
end
