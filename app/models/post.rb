class Post < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  has_one :drink
  has_many :likes
  validates :user, presence: true
end
