class Session < ApplicationRecord
  belongs_to :program

  validates :session_type, :date, :duration_min, :distance_km, presence: true
end
