class AddTargetIdToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :target_id, :integer
  end

  def self.down
    remove_column :comments, :target_id
  end
end
