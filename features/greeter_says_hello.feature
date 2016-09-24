Feature: greeter says hello




Scenario: start game
  Given I am not yet playing
  When I start a new game
  Then I should see "Welcome to Codebreaker!"
  And I should see "Enter guess:"

Scenario Outline: submit guess
  Given the secret code is "<code>"
  When I guess "<guess>"
  Then the mark should be "<mark>"
  
Scenarios: no matches
| code | guess | mark |
| 1234 | 5555  |      |

Scenarios: 1 number correct
| code | guess | mark |
| 1234 | 1555  | +    |
| 1234 | 2555  | -    |

Scenarios: 2 numbers correct
| code | guess | mark |
| 1234 | 5254  | ++   |
| 1234 | 5154  | +-   |
| 1234 | 2545  | --   |

Scenarios: 3 numbers correct
| code | guess | mark |
| 1234 | 5234  | +++  |
| 1234 | 5134  | ++-  |
| 1234 | 5124  | +--  |
| 1234 | 5123  | ---  |

Scenarios: all numbers correct
| code | guess | mark |
| 1234 | 1234  | ++++ |
| 1234 | 1243  | ++-- |
| 1234 | 1423  | +--- |
| 1234 | 4321  | ---- |


