class Post < ActiveRecord::Base
  #################################### Associations
  # User
  belongs_to :user

  #################################### Accessible attributes
  attr_accessible :description, :title, :image

  #################################### Carrierwave
  mount_uploader :image, ImageUploader
end
