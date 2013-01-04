Feature: Search youtube videos by movie

  As a movie buff
  So that I can see trailers or video clips for the movie from youtube

Background:

Scenario: show movie info will also show youtube results associated with the movie title
  Given I am on the details page for "Star Wars"
  Then I should see youtube results showing for "Star Wars"
