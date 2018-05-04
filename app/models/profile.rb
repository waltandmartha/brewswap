class Profile < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :followers
  validates :user, presence: true
end
