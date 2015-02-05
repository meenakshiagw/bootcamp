class Directions

	def self.by_name(direction_name)
		if direction_name == "NORTH"
			North.new
		elsif direction_name == "SOUTH"
			South.new
		elsif direction_name == "EAST"
			East.new
		else direction_name == "WEST"
			West.new
		end

	end
	
end