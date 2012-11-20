require 'spec_helper'
describe Movie do
  it 'should call the active record method that fetches movies with same director' do
    Movie.find_all_by_director("George Lucas")

  end
end
