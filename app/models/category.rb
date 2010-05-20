class Category < ActiveRecord::Base
  belongs_to :landing
  has_many :category_pages
  has_many :pages, :through => :category_pages
end
