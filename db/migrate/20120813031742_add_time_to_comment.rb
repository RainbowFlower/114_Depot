class AddTimeToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :time, :string
  end

  def self.down
    remove_column :comments, :time
  end
end
