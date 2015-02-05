class Scanner

	attr_reader :direction, :position

	def initialize(direction, position)
		@direction = 0
		@position = 0
	end

	def left
		@direction = @direction.left
	end

	def right
		@direction = @direction.right
	end

	def move
		@position = @direction.move(@position)
	end

end