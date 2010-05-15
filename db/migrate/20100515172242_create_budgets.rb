class CreateBudgets < ActiveRecord::Migration
  def self.up
    create_table :budgets do |t|
      t.integer :ext_id
      t.integer :year
      t.integer :club_id
      t.integer :expense_in_cents
      t.integer :income_in_cents
      t.integer :subsidy_in_cents

      t.timestamps
    end
  end

  def self.down
    drop_table :budgets
  end
end
