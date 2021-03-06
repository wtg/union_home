class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.text :description
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
