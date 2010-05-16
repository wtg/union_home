class CreateCategoryPages < ActiveRecord::Migration
  def self.up
    create_table :category_pages do |t|
      t.integer :category_id
      t.integer :page_id
      t.integer :cardinality
      t.boolean :is_pinned

      t.timestamps
    end
  end

  def self.down
    drop_table :category_pages
  end
end
