class Sidebar < ActiveRecord::Base
  has_many :landings, :through => :landing_sidebars
  has_many :pages, :through => :page_sidebars
end
