require './commands/processor'

describe 'Processor' do
  describe '.find_processor' do
    def search(command)
      Processor.send(:find_processor, command)
    end

    describe 'for numeric' do
      it 'should return NumericOperandCommand for integer' do
        expect(search('3')).to eq NumericOperandCommand
      end

      it 'should return NumericOperandCommand for float' do
        expect(search('3.5')).to eq NumericOperandCommand
      end

      it 'should return NumericOperandCommand for negative float' do
        expect(search('-3.566')).to eq NumericOperandCommand
      end

      it 'should raise an exception if number is wrong' do
        expect{search('25,5')}.to raise_error(CommandNotRecongnized)
      end
    end

    describe 'for operators' do
      it 'should return MinusCommand for -' do
        expect(search('-')).to eq MinusCommand
      end

      it 'should return PlusCommand for +' do
        expect(search('+')).to eq PlusCommand
      end

      it 'should return MultCommand for *' do
        expect(search('*')).to eq MultCommand
      end

      it 'should return DivCommand for /' do
        expect(search('/')).to eq DivCommand
      end

      it 'should raise an exception if operator is not supported' do
        expect{search('^')}.to raise_error(CommandNotRecongnized)
      end
    end
  end
end