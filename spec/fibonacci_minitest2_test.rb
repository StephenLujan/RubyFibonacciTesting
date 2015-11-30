require 'minitest/autorun'
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibonacci'


describe "Fibbonacci" do

  before do
    @expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
  end

  it 'should return the correct sequence of numbers' do
    for i in 2..10
      fibonacci_sequence(i).must_equal @expected[0...i]
    end
  end
end