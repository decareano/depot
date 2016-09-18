In order to start learning Cuke
I want a greeter to say hello

Scenario: greeter says hello
  Given a greeter
  When I send the greet message
  Then I should see "Hello Cukes"