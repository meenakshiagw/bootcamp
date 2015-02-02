class Rectangle
	
	@@conversion = {"mm" => 1.0, "cm" => 10.0, "m" => 1000.0}

	def initialize(length, length_unit, breadth, breadth_unit)
		@length = convert(length, length_unit, "mm")
		@breadth = convert(breadth, breadth_unit, "mm")
	end

	def perimeter(unit)
		2 * (convert(@length, "mm", unit) + convert(@breadth, "mm", unit))
	end

	private 

	def convert(length, current_unit, required_unit)
		length * multiplying_factor(current_unit, required_unit)
	end

	def multiplying_factor(current_unit, required_unit)
		@@conversion[current_unit] / @@conversion[required_unit]
	end

end