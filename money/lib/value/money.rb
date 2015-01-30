class Money

	attr_reader :rupee, :paisa

	def initialize(rupee, paisa)
		@rupee = rupee
		@paisa = paisa
	end

	def +(other)
		(@rupee + other.rupee) + (@paisa + other.paisa)
	end
end