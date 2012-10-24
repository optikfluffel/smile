class Post < ActiveRecord::Base
  belongs_to :user

  attr_accessible :description, :title, :image

  # Get the carrierwave uploader ready to go
  mount_uploader :image, ImageUploader
end
