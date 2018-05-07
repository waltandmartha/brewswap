class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an "image" virtual attribute
  belongs_to :user
  has_many :reviews
  has_many :followers
  has_many :posts
  validates :user, presence: true

  def image_display(args)
    if image_data
      image_url(args)
    else
      "https://image.shutterstock.com/z/stock-photo-beer-barrel-297253958.jpg"
    end
  end
end
