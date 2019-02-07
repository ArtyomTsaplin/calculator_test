#Additional command example. Just outputs stack
require_relative 'command_base'

class StateCommand < CommandBase
  def self.pattern
    /^\?$/
  end

  def self.apply(stack, command)
    stack.join(', ')
  end
end