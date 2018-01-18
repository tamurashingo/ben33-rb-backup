class User < ApplicationRecord
  has_many :attends
  has_many :event, through: :attends

  validates :email, presence: true
  validates :username, presence: true
  validates :pin, presence: true,
                  length: { minimum: 6 }
end
