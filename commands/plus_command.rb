require_relative 'command_base'

class PlusCommand < CommandBase
  def self.pattern
    /^\+$/
  end

  def self.apply(stack, command)
    a = stack.pop || 0
    b = stack.pop || 0
    res = b + a
    stack.push res
    res
  end
end