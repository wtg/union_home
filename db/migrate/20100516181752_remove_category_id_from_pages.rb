class RemoveCategoryIdFromPages < ActiveRecord::Migration
  def self.up
    remove_column :pages, :category_id
  end

  def self.down
    add_column :pages, :category_id, :integer
  end
end
