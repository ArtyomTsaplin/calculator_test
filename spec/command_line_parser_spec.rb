require './command_line_parser.rb'

describe 'CommandLineParser' do
  it 'should return an array' do
    expect(CommandLineParser.parse('2 -1 + 2.0 - -3.66 * 22.3 /')).to eq ['2', '-1', '+', '2.0', '-', '-3.66', '*', '22.3', '/']
  end

  it 'should not parse array which contain the wron command' do
    expect(CommandLineParser.parse('2 wrong +')).to eq []
  end

  it 'should return empty array if no commands entered' do
    expect(CommandLineParser.parse('     ')).to eq []
  end
end