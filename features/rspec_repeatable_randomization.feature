Feature: Repeatable randomization in RSpec

  @announce
  Scenario: Randomization should be repeatable with a seed
    Given A randomly ordered test run with a seed
    When I run it a second time with the same seed
    Then I see the same results
