class HomeController < ApplicationController
  require 'open-uri'
  require 'json'
  def index
    @homelinks = HomeLink.find(:all, :order => "cardinality ASC")
  end

  def concerto
    feeds = [1,30,32]
    count = 8
    @finaljson = []
    for feed in feeds
      url = 'http://signage.union.rpi.edu/content/render/?select_id='+feed.to_s+'&format=json&count='+count.to_s+'&orderby=rand&type=graphics&width=652&height=320'
      buffer = open(url, "UserAgent" => "Ruby-Wget").read
      result = JSON.parse(buffer)
      @finaljson = @finaljson + result
    end
    @finaljson = @finaljson.sort_by { rand }
    if @finaljson.size > count
        @finaljson = @finaljson[0..count-1]
    end
    respond_to do |format|
      format.json  { render :json => @finaljson.to_json }
    end
  end

end
