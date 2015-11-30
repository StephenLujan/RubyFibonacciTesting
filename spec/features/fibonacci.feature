Feature: fibbonacci sequence

  Scenario: get a correct sequence 5 long
    Given x = 5
    Then I can assert that fibonacci_sequence(x) == [0, 1, 1, 2, 3]

  Scenario: get a correct sequence 4 long
    Given x = 4
    Then I can assert that fibonacci_sequence(x) == [0, 1, 1, 2]