class CreateLandingSidebars < ActiveRecord::Migration
  def self.up
    create_table :landing_sidebars do |t|
      t.integer :landing_id
      t.integer :sidebar_id
      t.integer :cardinality

      t.timestamps
    end
  end

  def self.down
    drop_table :landing_sidebars
  end
end
