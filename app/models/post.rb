class Post < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an "image" virtual attribute
  belongs_to :user
  has_one :drink
  accepts_nested_attributes_for :drink 
  has_many :likes
  validates :user, presence: true
end
