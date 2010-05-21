class HomeController < ApplicationController
  def index
    @homelinks = HomeLink.find(:all, :order => "cardinality ASC")
  end

end
