require 'spec_helper'

describe SessionsController do

  fixtures 'users'
#  describe "Start a new session" do
#    it "should redirect to the login page" do
#      user = User.create! valid_attributes
#      get 'new', {:user => valid_attributes}
#      get 'new'
#      response.should redirect_to(login_url)
#    end
#  end

  describe "Start new session with valid credentials" do
    it "should pass" do
      darren = users(:darren)
      get :create, {name: "darren", password: "secret", password_confirmation: "secret"}
      session[:name].should eq(darren.name)
      response.should redirect_to(movies_path)
    end
  end

  describe "Logout of session" do
    it "session should not have any user info" do
      get :create, {name: "darren", password: "secret", password_confirmation: "secret"}
      get :destroy
      session[:name].should eq(nil)
      response.should redirect_to(movies_path)
    end
  end

end
