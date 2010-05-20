class CreateHomeLinks < ActiveRecord::Migration
  def self.up
    create_table :home_links do |t|
      t.string :label
      t.string :url
      t.integer :cardinality

      t.timestamps
    end
  end

  def self.down
    drop_table :home_links
  end
end
