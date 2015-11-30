require 'rspec'
$LOAD_PATH.unshift(File.join(__dir__, '..', 'lib'))
require 'fibonacci'


describe Fibonacci do
  context 'with the default starting numbers' do
    describe "#sequence" do
      let(:normal_sequence) { [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181] }
      for i in 2..10
        describe "#sequence #{i}" do
          it { expect(subject.sequence i).to eq(normal_sequence[0...i]) }
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