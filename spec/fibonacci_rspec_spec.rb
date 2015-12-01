require 'rspec'
require 'rspec/collection_matchers'
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibonacci'


describe Fibonacci do
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
  context 'with the default starting numbers' do
    subject(:fibonacci) { Fibonacci.new }
    describe "#sequence" do
      let(:normal_sequence) { [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181] }
      for i in 2..10
        describe "#sequence #{i}" do
          subject { fibonacci.sequence i }
          it { is_expected.to have(i).numbers }
          it { is_expected.to eq(normal_sequence[0...i]) }
        end
      end
    end
    describe '#nth 5' do
      it { expect(subject.nth 5).to eq(5) }
    end

  end
  context 'with weird starting numbers' do
    subject { Fibonacci.new(3, 9) }
    describe '#sequence' do
      let(:weird_sequence) { [3, 9, 12, 21, 33, 54, 87, 141, 228, 369] }
      for i in 2..10
        describe "#sequence #{i}" do
          it { expect(subject.sequence i).to eq(weird_sequence[0...i]) }
        end
      end
    end
    describe '#nth 5' do
      it { expect(subject.nth 5).to eq(33) }
    end
  end
end