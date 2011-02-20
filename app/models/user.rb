class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :length => { :maximum => 14}
  validates_format_of :username, :with => /^\w+$/i,
      :message => "can only contain letters, numbers, and underscores."
  validates_presence_of :username
  validates_uniqueness_of :username
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me
  has_many :questions
  has_many :subscriptions
end
