class Page < ActiveRecord::Base
  belongs_to :category
  has_many :sidebars, :through => :page_sidebars
  has_many :images, :as => :imageable
end
