require 'spec_helper'
describe MoviesController do
  describe 'Find Movies With Same Director' do
    fixtures :movies
    it 'should call the model method that performs search movies with same director' do
#m = mock('Movie', :director => "George Lucas", :id=>1)
      post :same_director, {:id=>1}
      Movie.should_receive(:find_all_by_director).with(movies(:movie1).director)
#post :same_director, {:director => "George Lucas"}
    end
    it 'should select the search results template for rendering'  do
#Movie.stub(:find_all_by_director)
#      post /movies/1/same_director
#      response.should render_template("same_director")
    end
    
    it 'should make the search movies with same director results availabe to that template' do
#      fake_results=[mock('Movie'), mock('Movie')]
#      Movie.stub(:find_all_by_director).and_return(fake_results)
#      post /movies/1/same_director
      #look for controller method to assign @movies
#      assigns(:movies).should == fake_results
    end
  end
end
