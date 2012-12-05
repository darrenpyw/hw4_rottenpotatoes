Feature: user login

  As a movie buff
  So that I can login to the site
  I want to be able to login and logout of the site

Background: 
  Given I am on the RottenPotatoes home page

Scenario: User is not registered to the site
  Given I am on the RottenPotatoes home page
  Then I should see "Login or Register to become a member"

Scenario: register to be member of the site
  Then  I follow "Register to become a member"
  And  I should be on the Sign up page
  When I fill in the following:
    | Name             | Darren       |
    | Password         | secret       |
    | Confirm Password | secret       |
  And I press "Create User"
  Then I am on the RottenPotatoes home page
  And I should see Welcome "Darren"

Scenario: logout of the site successfully
  Given  I click "Login"
  And I should be on the Sign in page
  And I fill in the following:
    | Name             | Darren       |
    | Password         | secret       |
  And I click "Sign In"
  And I am on the RottenPotatoes home page
  And I should see Welcome "Darren"
  When I click "Logout" 
  Then I am on the RottenPotatoes home page
  And I should see "Login or Register to become a member"

Scenario: Login to the site
  When  I click "Login"
  Then  I should be on the Sign in page
  And I fill in the following:
    | Name             | Darren       |
    | Password         | secret       |
  And I click "Sign In"
  Then I am on the RottenPotatoes home page
  And I should see Welcome "Darren"
