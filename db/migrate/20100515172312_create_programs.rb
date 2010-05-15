class CreatePrograms < ActiveRecord::Migration
  def self.up
    create_table :programs do |t|
      t.string :name
      t.integer :expense_in_cents
      t.integer :income_in_cents
      t.integer :subsidy_in_cents
      t.integer :budget_id

      t.timestamps
    end
  end

  def self.down
    drop_table :programs
  end
end
