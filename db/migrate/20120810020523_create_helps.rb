class CreateHelps < ActiveRecord::Migration
  def self.up
    create_table :helps do |t|
      t.string :url
      t.string :title
      t.integer :tag

      t.timestamps
    end
  end

  def self.down
    drop_table :helps
  end
end
