class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string :name
      t.integer :ext_id
      t.integer :category_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :clubs
  end
end
