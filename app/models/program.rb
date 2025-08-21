class Program < ApplicationRecord

  belongs_to :goal
  
  has_many :sessions
end
