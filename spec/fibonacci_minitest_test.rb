require 'test/unit'
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibbonacci'


class MyTest < Test::Unit::TestCase

  def setup
    @expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
  end

  def teardown
    # Do nothing
  end

  def test_that_sequence_is_correct
    for i in 2..10
      assert_equal fibonacci_sequence(i), @expected[0...i]
    end
  end
end