class Line

	attr_reader :point2, :point1

	def initialize(point1, point2)
		@point1 = point1
		@point2 = point2
	end

	def length
		((@point1.x-@point2.x)**2 + (@point1.y-@point2.y)**2)**0.5
	end

	def ==(line)
		return false if line.nil?
		((@point1 == line.point1 && @point2 == line.point2) || (@point1 == line.point2 && @point2 == line.point1))
	end

	def hash
		hash_array = nil
		if @point1.x < @point2.x
			hash_array = [@point1, @point2]
		else
			hash_array = [@point2, @point1]
		end
		hash_array.hash
	end
end