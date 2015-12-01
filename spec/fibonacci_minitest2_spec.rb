require 'minitest/autorun'
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibonacci'


describe Fibonacci do

  before do
    @expected = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
  end

  describe "new" do
    it "can be created with no arguments" do
      expect(Fibonacci.new).to be_a(Fibonacci)
    end

    it "can be created with seed numbers" do
      fibonacci = Fibonacci.new(8, 9)
      expect(fibonacci).to be_a(Fibonacci)
      expect(fibonacci.first_number).to eq(8)
      expect(fibonacci.second_number).to eq(9)
    end
  end

  describe "#sequence" do
    it 'should return the correct sequence of numbers' do
      fibonacci = Fibonacci.new
      for i in 2..10
        # puts @fibonacci
        # puts @fibonacci.sequence(i)
        # puts @expected
        expect(fibonacci.sequence(i)).to eq(@expected[0...i])
      end
    end
  end
end