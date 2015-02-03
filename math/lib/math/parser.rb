class Parser

	def initialize(calculator)
		@calculator = calculator
	end

	def input(input_string)
		input_components = input_string.split(" ")
		begin
			if input_components[0] == "cancel" || input_components[0] == "exit"
				@output = @calculator.send(input_components[0].to_sym)
			else
				@output = @calculator.send(input_components[0].to_sym, input_components[1].to_f)
			end
		rescue Exception => e
			@output = "Incorrect input"
		end
	end

	def output
		@output
	end

end