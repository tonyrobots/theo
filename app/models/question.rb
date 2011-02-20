class Question < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :body, :length => { :maximum => 140}
  validates_presence_of :body, :user_id
end
