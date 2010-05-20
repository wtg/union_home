class Page < ActiveRecord::Base
  has_many :page_sidebars
  has_many :sidebars, :through => :page_sidebars
  has_many :images, :as => :imageable
  has_many :categories, :through => :category_pages
end
