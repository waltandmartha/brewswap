class Post < ApplicationRecord
  belongs_to :user
  has_one :drink
  has_many :likes
  validates :user, presence: true
end
