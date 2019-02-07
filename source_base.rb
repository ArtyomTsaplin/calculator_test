class SourceBase
  def self.listen(parser=CommandLineParser)
    read do |buf|
      commands = parser.parse(buf)
      commands.each do |command|
        return false if exit_command?(command)

        if block_given?
          yield(command)
        end
        true
      end
    end
  end

  def self.read
    raise NotImplementedError
  end

  def self.exit_command?(command)
    raise NotImplementedError
  end
end