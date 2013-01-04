require 'net/http'

class YoutubeController < ApplicationController

  def self.search_youtube (title)
    utube = Youtube.new
    feeds = utube.search(title)
#feeds.each { |element| p element.content.split(":").last}
  end

  def self.top_rated
    utube = Youtube.new
    @top_feeds = utube.top_rated_feed
  end

end
