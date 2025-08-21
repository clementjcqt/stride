class Goal < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :programs

  # before_validation :calcul_goal_time

  # def goal_hours
  #   goal_time.to_i / 60
  # end

  # def goal_minutes
  #   goal_time.to_i % 60
  # end

  # def goal_hours=(h)
  #   @goal_hours = h.to_i
  # end

  # def goal_minutes=(m)
  #   @goal_minutes = m.to_i
  # end

  # private

  # def calcul_goal_time
  #   self.goal_time = (goal_hours * 60) + goal_minutes
  # end
end
