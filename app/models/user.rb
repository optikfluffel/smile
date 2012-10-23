class User < ActiveRecord::Base
  # Associations
  # Friendship
  has_many :followings
  has_many :followed_users, :through => :followings, :source => :follower
  has_many :reverse_followings, :class_name => "Following", :foreign_key => "follower_id"
  has_many :followers, :through => :reverse_followings, :source => :user
  # Smiles
  # TODO: Add associations for smiles
  # Likes
  # TODO: Add associations for likes

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me

  # Validations
  # Username
  validates_presence_of :username, :on => :create
  validates_uniqueness_of :username
  validates_length_of :username, :minimum => 3

  # Email
  validates_presence_of :email, :on => :create
  validates_uniqueness_of :email

end
