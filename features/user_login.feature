Feature: user login

  As a movie buff
  So that I can register and login to the site
  I want to be able to login and logout of the site

Background: 
  Given I am on the RottenPotatoes home page


Scenario: User is not registered to the site
  Given I am on the RottenPotatoes home page
  And I should see the link "Login"
  And I should see the link "Register"
  When I click "Login"
  Then I should be on the Login page
  And I click "Sign In"
  And I should see "Invalid user/password"

Scenario: register to be member of the site
  Then  I click "Register"
  And  I should be on the Sign up page
  When I fill in the following:
    | Name             | Darren       |
    | Password         | secret       |
    | Confirm Password | secret       |
  And I click "Create User"$
  And I dump the response
  Then I should be on the RottenPotatoes home page
  And I should see Welcome "Darren"

Scenario: logout of the site successfully
  Given I am on the RottenPotatoes home page
  When  I click "Login"
  Then I should be on the Login page
  And I fill in the following:
    | Name             | Darren       |
    | Password         | secret       |
  And I click "Sign In"
  And I should be on the RottenPotatoes home page
  And Response should be successful
  And I should see Welcome "Darren"
  When I click "Logout" 
  Then I should see "Login or Register to become a member"
  And I dump the response

Scenario: Login to the site
  When  I click "Login"
  Then I should be on the Login page
  And I fill in the following:
    | Name             | Darren       |
    | Password         | secret       |
  And I click "Sign In"
  Then I should see Welcome "Darren"
  And I should be on the RottenPotatoes home page
  And I dump the response
