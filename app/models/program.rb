class Program < ApplicationRecord
  has_many :sessions, dependent: :destroy
  has_many :sessions
end
