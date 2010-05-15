class Landing < ActiveRecord::Base
  has_many :categories
  has_many :sidebars, :through => :landing_sidebars
  has_many :images, :as => :imageable  # polymorphic association
end
