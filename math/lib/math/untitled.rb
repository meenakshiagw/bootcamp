#!/Users/meenakshiagrawal/.rvm/rubies/ruby-2.1.2p95/bin/ruby

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'math'

calci = Calculator.new
print "$ "
input = gets.chomp
while input != 'exit' do 
    puts calci.command(input)
    print "$ "
    input = gets.chomp
end