class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :cart_id
      t.integer :order_id
      t.integer :quantity,:default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
