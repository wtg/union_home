class Club < ActiveRecord::Base
  belongs_to :category
  has_many :budgets
end
