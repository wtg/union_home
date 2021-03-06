class CreateSidebars < ActiveRecord::Migration
  def self.up
    create_table :sidebars do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :sidebars
  end
end
