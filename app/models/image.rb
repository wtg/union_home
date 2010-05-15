class Image < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  
  has_attached_file :file, 
  	:styles => { 
      :medium => "300x300>", 
      :thumb => "100x100>" 
  	}

  validates_presence_of :file
end
