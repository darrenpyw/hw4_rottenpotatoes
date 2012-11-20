require 'spec_helper'

describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs search movies with same director' do
      Movie.should_receive(:find_all_by_director).with('George Lucas')
#post :same_director, {:director => "George Lucas"}
      post :same_director_movie
    end
    it 'should select the search results template for rendering'  do
      Movie.stub(:find_all_by_director)
      post :same_director, {:director => "George Lucas"}
      response.should render_template("same_director")
    end
    
    it 'should make the search movies with same director results availabe to that template' do
      fake_results=[mock('Movie'), mock('Movie')]
      Movie.stub(:find_all_by_director).and_return(fake_results)
      post :same_director, {:director => "George Lucas"}
      #look for controller method to assign @movies
      assigns(:movies).should == fake_results
    end
  end
end
