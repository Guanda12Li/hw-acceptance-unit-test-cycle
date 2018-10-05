Feature: sort movie

  As a rottenpotatoes user
  So that I can manage the list of movies
  I want to be sort movies according to title and release_date
  
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
  
Scenario: sort by Title
  When I go to the movies page
  And  I follow "Movie Title"
  Then I should see "Alien" before "Blade Runner"
  
Scenario: sort by Release Date
  When I go to the movies page
  And  I follow "Release Date"
  Then I should see "THX-1138" before "Star Wars"