Feature: fibbonacci sequence

  Scenario Outline: get a correct sequence <length> long
    Given length = <length>
    And first = <first_number>
    And second = <second_number>
    Then I can assert that Fibonacci.new(first, second).sequence(length) == <result>
    Examples:
      | length | first_number | second_number | result          |
      | 5      | 1            | 1             | [1, 1, 2, 3, 5] |
      #| 5      | nil          | nil           | [1, 1, 2, 3, 5] |
      | 5      | 0            | 1             | [0, 1, 1, 2, 3] |
      | 4      | 1            | 1             | [1, 1, 2, 3]    |
      | 4      | 1            | 1             | [1, 1, 2, 3]    |


#  Scenario: get a correct sequence 5 long
#    Given z = 5
#    Then I can assert that fibonacci_sequence(x) == [0, 1, 1, 2, 3]
#
#  Scenario: get a correct sequence 4 long
#    Given z = 4
#    Then I can assert that fibonacci_sequence(x) == [0, 1, 1, 2]