# It converts the mm, cm and m.
class Conversion

	def initialize(m = 0, cm = 0, mm = 0)
		@length_in_mm = (m * 100 + cm) * 10 + mm
	end

	def mm
		@length_in_mm
	end

	def cm
		@length_in_mm / 10.0
	end

	def m
		cm / 100.0
	end

	def +(other)
		Conversion.new(0, 0, mm + other.mm)
	end

	def ==(other)
		mm == other.mm
	end

end