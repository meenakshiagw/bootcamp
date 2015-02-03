# It takes input from console and give output to console.
class ConsoleIO

	def initialize(parser)
		@parser = parser
	end

	def start_IO_loop
		print "$ "
		input_string = gets.chomp
		while true do 
	    puts @parser.input(input_string) 
	    print "$ "
	    input_string = gets.chomp    
		end
	end
end