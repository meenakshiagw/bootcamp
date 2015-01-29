class Point

	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def ==(point)
		return false if point.nil?
		(@x == point.x) && (@y == point.y)
	end

	def hash
		[@x, @y].hash
	end

end