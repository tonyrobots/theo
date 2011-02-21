class ChangeQuestionBodyToText < ActiveRecord::Migration
  def self.up
    change_column :questions, :body,   :text
  end

  def self.down
    change_column :questions, :body,   :string
  end
end
