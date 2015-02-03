#!/Users/meenakshi/.rvm/rubies/ruby-2.1.2/bin/ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'math'

calculator = Calculator.new()
parser = Parser.new(calculator)
console = ConsoleIO.new(parser)
console.start_IO_loop