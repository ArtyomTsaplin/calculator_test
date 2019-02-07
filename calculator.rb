require "readline"
require_relative "stdin_source"
require_relative "command_not_recognized"
require_relative "command_line_parser"

stack = []

StdinSource.listen do |command|
  puts Processor.execute(stack, command)
end
