class User < ActiveRecord::Base
  #################################### Associations
  # Friendship
  has_many :followings
  has_many :followed_users, :through => :followings, :source => :follower
  has_many :reverse_followings, :class_name => "Following", :foreign_key => "follower_id"
  has_many :followers, :through => :reverse_followings, :source => :user
  # Posts
  has_many :posts, :dependent => :destroy
  # Likes
  # TODO: Add associations for likes

  #################################### Devise configuration
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  #################################### Accessible attributes
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  #################################### Validations
  # Username
  validates_presence_of :username, :on => :create
  validates_uniqueness_of :username
  validates_length_of :username, :minimum => 3

  # Email
  validates_presence_of :email, :on => :create
  validates_uniqueness_of :email

  #################################### Timeline
  def timeline
    Post.find(:all, :conditions => ["user_id in (?)", followed_users.map(&:id).push(self.id)], :order => "created_at desc")
  end

end
