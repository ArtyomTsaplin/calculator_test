require_relative 'command_base'

class NumericOperandCommand < CommandBase
  def self.pattern
    /^-?\d+(\.\d+)?$/
  end

  def self.apply(stack, command)
    stack.push command.to_f
    command.to_f
  end
end