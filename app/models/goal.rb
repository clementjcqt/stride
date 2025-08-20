class Goal < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :program
end
