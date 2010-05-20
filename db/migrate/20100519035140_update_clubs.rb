class UpdateClubs < ActiveRecord::Migration
  def self.up
    add_column :clubs, :website, :string
  end

  def self.down
    remove_column :clubs, :website
  end
end
