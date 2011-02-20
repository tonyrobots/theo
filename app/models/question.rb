class Question < ActiveRecord::Base
  belongs_to :user
  validates :body, :length => { :maximum => 140}
  validates_presence_of :body, :user_id
end
