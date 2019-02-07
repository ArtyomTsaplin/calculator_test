class CommandBase
  def self.recognize(command)
    command.match pattern
  end

  def self.apply(stack, command)
    raise NotImplementedError
  end

  def self.pattern
    raise NotImplementedError
  end

  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end
end