# It shows the perimeter of rectangle in mm, cm and m.
class Rectangle

	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def perimeter
		(@length + @length + @breadth + @breadth)
	end

end