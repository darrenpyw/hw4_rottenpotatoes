require 'spec_helper'
describe MoviesController do
  describe 'Find Movies With Same Director' do
    fixtures :movies
    it 'should call the model method that performs search movies with same director' do
#m = mock('Movie', :director => "George Lucas", :id=>1)
#     get :new, {:title=>movies(:movie1).title, :rating=>movies(:movie1).rating, :director=>movies(:movie1).director, :release_date=>movies(:movie1).release_date}
      Movie.should_receive(:find_all_by_director).with(movies(:movie1).director)
      post :same_director, {:id=>movies(:movie1).id}
    end
    it 'should select the search results template for rendering'  do
      #Movie.stub(:find_all_by_director)
      post :same_director, {:id=>movies(:movie1).id} 
      response.should render_template("same_director")
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
