# It takes the input in form of string and gives output in the form of string.
class Parser

	def initialize(calculator)
		@calculator = calculator
	end

	def input(input_string)
		input_components = input_string.split(" ")
		begin
			if input_components[0] == "cancel" || input_components[0] == "exit"
				@calculator.send(input_components[0].to_sym)
			else
				@calculator.send(input_components[0].to_sym, input_components[1].to_f)
			end
		rescue NoMethodError => e
			"Incorrect input"
		end
	end

end