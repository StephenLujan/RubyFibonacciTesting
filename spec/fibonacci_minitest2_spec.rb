require 'minitest/autorun'
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibonacci'


describe Fibonacci do

  before do
    @expected = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
  end

  it "can be created with no arguments" do
    Fibonacci.new.must_be_instance_of Fibonacci
  end

  it "can be created with seed numbers" do
    fibonacci = Fibonacci.new(8,9)
    fibonacci.must_be_instance_of Fibonacci
    fibonacci.first_number.must_equal 8
    fibonacci.second_number.must_equal 9
  end

  it 'should return the correct sequence of numbers' do
    fibonacci = Fibonacci.new
    for i in 2..10
      # puts @fibonacci
      # puts @fibonacci.sequence(i)
      # puts @expected
      @fibonacci.sequence(i).must_equal @expected[0...i]
    end
  end
end