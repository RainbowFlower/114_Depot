class AddWordsToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :author,:string
    add_column :products, :ISBN,:integer
    add_column :products, :category_title,:string
    add_column :products, :publisher,:string
  end

  def self.down
    remove_column :products, :author
    remove_column :products, :ISBN
    remove_column :products, :category_title
    remove_column :products, :publisher
  end
end
