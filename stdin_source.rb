require_relative 'source_base'

class StdinSource < SourceBase
  def self.read
    if block_given?
      while buf = Readline.readline("> ", true)
        break unless yield(buf)
      end
    end

  end

  def self.exit_command?(buf)
    ['q', 'Q'].include? buf.to_s.strip
  end
end