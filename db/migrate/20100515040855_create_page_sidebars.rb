class CreatePageSidebars < ActiveRecord::Migration
  def self.up
    create_table :page_sidebars do |t|
      t.integer :page_id
      t.integer :sidebar_id
      t.integer :cardinality

      t.timestamps
    end
  end

  def self.down
    drop_table :page_sidebars
  end
end
