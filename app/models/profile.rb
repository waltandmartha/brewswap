class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an "image" virtual attribute
  belongs_to :user
  has_many :reviews
  has_many :followers
  has_many :posts
  has_many :drinks, through: :posts
  validates :user, presence: true

  def image_display(args)
    if image_data
      image_url(args)
    else
      "http://via.placeholder.com/80x80"
     end
  end
end

   
