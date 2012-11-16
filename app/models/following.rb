class Following < ActiveRecord::Base
  #################################### Associations
  # User
  belongs_to :user
  belongs_to :follower, :class_name => "User"

  #################################### Accessible attributes
  attr_accessible :follower_id

end
