require_relative 'command_base'
Dir['./commands/*.rb'].each { |f| require f }

class Processor
  def self.check(commands)
    commands.each do |command|
      find_processor(command)
    end
  end

  def self.execute(stack, command)
    processor = find_processor(command)
    processor.apply(stack, command)
  end

private

  def self.find_processor(command)
    processor = CommandBase.descendants.detect do |command_processor|
      command_processor.recognize command
    end
    raise CommandNotRecongnized.new("#{command} is not a valid command") unless processor
    processor
  end
end