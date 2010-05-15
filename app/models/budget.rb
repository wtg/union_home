class Budget < ActiveRecord::Base
  belongs_to :club
  has_many :programs
end
