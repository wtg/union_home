class Landing < ActiveRecord::Base
  has_many :categories
  has_many :landing_sidebars
  has_many :sidebars, :through => :landing_sidebars
  has_many :images, :as => :imageable  # polymorphic association
  
  validates_presence_of :slug
  validates_uniqueness_of :slug
end
