require 'spec_helper'

describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs search movies with same director' do
      Movie.should_receive(:movies_same_director).with('George Lucas')
#      post :find_by_director, {:director => "George Lucas"}
    end
#    it should 'select the search results template for rendering' 
    
#    it should 'make the search movies with same director results availabe to that template' 
   
  end
end
