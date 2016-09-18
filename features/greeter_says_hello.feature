Feature: greeter says hello


Scenario: greeter says hello
  Given a greeter
  When I send the greet message
  Then I should see "Hello Cukes"

Scenario: start game
  Given I am not yet playing
  When I start a new game
  Then I should see "Welcome to Codebreaker!"
  And I should see "Enter guess:"

Scenario: all exact matches
  Given the secret code is "1234"
  When I guess "1234"
  Then the mark should be "++++"

Scenario: 2 and 2  matches (2 exact and 2 numbers)
  Given the secret code is "1234"
  When I guess "1234"
  Then the mark should be "++--"

Scenario: 1 and 3  matches (1 exact and 3 numbers)
  Given the secret code is "1234"
  When I guess "1234"
  Then the mark should be "+---"

Scenario: 4 number matches
  Given the secret code is "1234"
  When I guess "1234"
  Then the mark should be "----"