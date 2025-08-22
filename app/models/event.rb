class Event < ApplicationRecord
  has_many :goals, dependent: :destroy
end
