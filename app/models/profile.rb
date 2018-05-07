class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an "image" virtual attribute
  belongs_to :user
  has_many :reviews
  has_many :followers
  validates :user, presence: true
end
