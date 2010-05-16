class Category < ActiveRecord::Base
  belongs_to :landing
  has_many :pages, :through => :category_pages
end
