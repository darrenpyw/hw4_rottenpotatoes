require 'nokogiri'
require 'open-uri'
#require 'net/http'


class Youtube
  @@base_uri='http://gdata.youtube.com/feeds/api'
  @@search_uri='http://gdata.youtube.com/feeds/api/videos'
  @@standard_feeds_uri='http://gdata.youtube.com/feeds/api/standardfeeds'
  @@max_results=5

  def initialize
    
  end

  def search (title)
    params = {:v=> 2, :q => title, :max_results => @@max_results}
    uri = URI.parse(@@base_uri+"/videos")
    uri.query = URI.encode_www_form(params)
    feed = Nokogiri::XML(open(uri.to_s))
    #return Nokogiri::XML::NodeSet
    feed.css("entry/id")
    #resp = Net::HTTP.get_response(uri)
    #resp.body if resp.is_a?(Net::HTTPSuccess) 
  end

  def top_rated_feed
    uri = URI.parse(@@base_uri+"/standardfeeds")
    resp = Net::HTTP.get_response(uri)
    resp.body if resp.is_a?(Net::HTTPSuccess) 
  end
end
