class AddAdminToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :admin, :Boolean, :default => false
  end

  def self.down
    remove_column :users, :admin
  end
end
