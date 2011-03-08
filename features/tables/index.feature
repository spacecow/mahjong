Feature:
Background:
Given a user exists
And I am logged in as that user

Scenario: Create a new table
When I go to the tables page
And I follow "New Table" at the bottom of the page
Then 1 tables should exist
And 4 reservations should exist

Scenario: Eight tables are max
Given a table exists
And a table exists
And a table exists
And a table exists
And a table exists
And a table exists
And a table exists
And a table exists
When I go to the tables page
And I follow "New Table" at the bottom of the page
Then 8 tables should exist
