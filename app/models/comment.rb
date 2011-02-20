class Comment < ActiveRecord::Base
  belongs_to :user, :question
  attr_accessible :score
end
