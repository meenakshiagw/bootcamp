require 'spec_helper'

describe Directions do
	
	describe "by_name" do

		it "returns new north object when NORTH is given" do
			Directions.by_name("NORTH").to eq(North.new)
		end

		it "returns new south object when SOUTH is given" do
			Directions.by_name("SOUTH").to eq(South.new)
		end

		it "returns new east object when EAST is given" do
			Directions.by_name("EAST").to eq(East.new)
		end

		it "returns new west object when WEST is given" do
			Directions.by_name("WEST").to eq(West.new)
		end
	end

end