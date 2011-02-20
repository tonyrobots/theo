class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  attr_accessible :type_id, :target_id, :body, :score
end
