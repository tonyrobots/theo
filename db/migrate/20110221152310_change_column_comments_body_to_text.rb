class ChangeColumnCommentsBodyToText < ActiveRecord::Migration
  def self.up
    change_column :comments, :body,   :text
    
  end

  def self.down
    change_column :comments, :body,   :string
    
  end
end
