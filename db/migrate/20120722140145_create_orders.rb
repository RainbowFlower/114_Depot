class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :pay_type
      t.integer :user_id
      t.boolean :ship, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
