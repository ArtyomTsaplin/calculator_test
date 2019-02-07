require_relative 'command_base'

class MinusCommand < CommandBase
  def self.pattern
    /^-$/
  end

  def self.apply(stack, command)
    a = stack.pop || 0
    b = stack.pop || 0
    res = b - a
    stack.push res

    #just an example of custom output
    "#{b} - #{a} = #{res}"
  end
end