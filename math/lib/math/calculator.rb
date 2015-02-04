# It perfoms the add, subtract, multiply, divide, cancel and exit function.
class Calculator 

	def initialize
		@number = 0.0
		@steps = []
	end

	def add(a)
		puts "Inside add"
		@steps.push([:add, a])
		@number += a
	end

	def subtract(a)
		@steps.push([:subtract, a])
		@number = @number - a
	end

	def multiply(a)
		@steps.push([:multiply, a])
		@number *= a
	end

	def divide(a)
		@steps.push([:divide, a])
		@number /= a
	end

	def cancel
		@number = 0
	end

	def abs
		@number = @number.abs
	end

	def neg
		@number = -1 * @number
	end

	def sqrt
		@number = @number ** 0.5
	end

	def sqr
		@number = @number ** 2
	end

	def cube
		@number = @number ** 3
	end

	def cbrt
		@number = Math.cbrt(@number)
	end

	def repeat(a)
		steps_to_be_repeated = @steps[Range.new(-1 * a , -1)]
		steps_to_be_repeated.each do |x| 
			self.send(x[0], x[1]) 
		end
	end

	def exit
		abort
	end
end