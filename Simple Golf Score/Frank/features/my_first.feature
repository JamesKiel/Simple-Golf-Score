Feature: 
  As an iOS developer
  I want to have a sample feature file
  So I can see what my next step is in the wonderful world of Frank/Cucumber testing

Scenario: 
    Rotating the simulator for demonstration purposes
Given I launch the app
When I touch the Plus button
And I touch the Plus button
Then the stroke display should read "2"

Scenario:
    Next Hole after Hole in One
Given I launch the app
When I touch the Plus button
And I touch the Next Hole button
Then the stroke display should read ""
And the hole number should read "2"

Scenario:
    Viewing Round Score
Given I launch the app
When I touch the Plus button
And I touch the Next Hole button
And I touch the Plus button
And I touch the Next Hole button
And I touch the Round Score button
Then the stroke display should read "2"
And the hole number should read "3"

Scenario:
    Viewing Round Score then Hole Score
Given I launch the app
When I touch the Plus button
And I touch the Next Hole button
And I touch the Round Score button
And I touch the Hole Score button
Then the stroke display should read ""
And the hole number should read "2"

Scenario:
    Debugging
Given I launch the app
When I touch the Round Score button
And I touch the Hole Score button
Then the stroke display should read ""