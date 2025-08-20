class RemoveReferenceToGoals < ActiveRecord::Migration[7.1]
  def change
    remove_reference :goals, :program, index: true
  end
end
