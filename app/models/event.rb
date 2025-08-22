class Event < ApplicationRecord
  has_many :goals, dependent: :destroy
  has_many :favorites
  has_many :favorited_by, through: :favorites, source: :user
end
