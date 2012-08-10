class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :commentator
      t.integer :product_id
      t.text :content
      t.integer :grade
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
