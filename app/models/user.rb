class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :goals, dependent: :destroy
  has_many :sessions, dependent: :destroy
  has_many :programs, through: :goals

  validates :first_name, :last_name, presence: true
  validates :age, numericality: { only_integer: true }, allow_nil: true
  validates :height, :weight, numericality: { only_integer: true }, allow_nil: true
  validates :level, inclusion: { in: %w[beginner intermediate advanced] }, allow_nil: true
  validates :gender, inclusion: { in: %w[male female other] }, allow_nil: true
  validates :country, length: { maximum: 100 }, allow_nil: true

  attribute :conditions, :jsonb, default: []
  attribute :availability, :jsonb, default: {}
end
