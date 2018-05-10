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
      "http://s.quickmeme.com/img/4d/4d56e45853983bfeedced94719e78b2869e21252c3d85105f7b56320b8f959ab.jpg"
    end
  end
end
