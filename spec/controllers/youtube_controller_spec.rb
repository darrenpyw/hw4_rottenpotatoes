require 'spec_helper'

describe YoutubeController do
  describe 'Search youtube with movie title' do
    fixtures :movies
    it 'should call the search_youtube controller method to with movie title' do
      YoutubeController.should_receive(:search_youtube).with(movies(:movie1).title)
    end

    it 'should return JSON results' do
      stub(:search_youtube).and_return()
    end

  end

  describe 'Get youtube top rated feed' do
    it 'should render the template' do
      get :top_rated
      response.should have_rendered("top_rated")  
    end

    it 'should call the controller method get_top_rated' do
      get :top_rated
      YoutubeController.should_receive(:top_rated)
    end

    it 'should return results' do
      get :top_rated
      if !@top_feeds
        flunk
      end
    end
  end


end
