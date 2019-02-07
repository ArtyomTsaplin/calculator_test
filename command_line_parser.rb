require_relative "command_not_recognized"
require_relative "commands/processor"

class CommandLineParser
  def self.parse(line)
    commands = line.to_s.split(' ').map(&:strip).compact
    Processor.check(commands)
  rescue CommandNotRecongnized => e
    puts e.message
    return []
  end
end