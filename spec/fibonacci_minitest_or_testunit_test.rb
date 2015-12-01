#test/unit and  minitest can use the same syntax
begin
  #
  require 'minitest/autorun'
  TestClass = Minitest::Test
  puts 'Using minitest gem'
rescue Exception
  # Test::Unit 2.x - Improved version of Test::Unit bundled in Ruby 1.8.x.
  # Ruby 1.9.x bundles minitest not Test::Unit. Test::Unit bundled in Ruby 1.8.x
  # had not been improved but unbundled Test::Unit (Test::Unit 2.x) will be improved actively.
  require 'test/unit'
  TestClass = Test::Unit::TestCase
  puts 'using standard lib minitest'
end
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibonacci'


class MyTest < TestClass

  def setup
    @expected = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
    @fibonacci = Fibonacci.new
  end

  def test_that_sequence_is_correct
    for i in 2..10
      assert_equal @fibonacci.sequence(i), @expected[0...i]
    end
  end
end