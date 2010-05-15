class AddSlugs < ActiveRecord::Migration
  def self.up
    add_column :pages, :slug, :string
    add_column :landings, :slug, :string
    add_column :clubs, :slug, :string
  end

  def self.down
    remove_column :clubs, :slug
    remove_column :landings, :slug
    remove_column :pages, :slug
  end
end
