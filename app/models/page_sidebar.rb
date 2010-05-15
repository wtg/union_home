class PageSidebar < ActiveRecord::Base
  belongs_to :page
  belongs_to :sidebar
end
