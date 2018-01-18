class Event < ApplicationRecord
  has_many :attends
  has_many :user, through: :attends

  validates :event_name, presence: true
end
