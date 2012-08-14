class AddShipToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :ship, :boolean, :default => false
  end

  def self.down
    remove_column :orders, :ship
  end
end
