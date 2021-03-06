require "mini_magick"

class Post < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an "image" virtual attribute
  belongs_to :user
  has_one :drink
  accepts_nested_attributes_for :drink 
  has_many :likes
  validates :user, presence: true

  def image_display(args)
    if image_data
      image_url(args)
    else
      "http://via.placeholder.com/80x80"
    end
  end
end
