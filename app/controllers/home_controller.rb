class HomeController < ApplicationController
  def index
    @homelinks = HomeLink.all
  end

end
