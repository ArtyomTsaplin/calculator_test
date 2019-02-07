require './commands/minus_command'

describe 'MinusCommand' do
  it 'should recognize single - only' do
    expect(MinusCommand.recognize('-')).to be_truthy
    expect(MinusCommand.recognize('--')).to_not be_truthy
  end

  it 'should substract two operands' do
    stack = [2, 1.5]
    expect{MinusCommand.apply(stack, '-')}.to change{stack}.to([0.5])
  end

  it 'should assume that missing operand is 0' do
    stack = [2]
    expect{MinusCommand.apply(stack, '-')}.to change{stack}.to([-2])
  end
end