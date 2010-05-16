class CategoryPage < ActiveRecord::Base
  belongs_to :category
  belongs_to :page
end
