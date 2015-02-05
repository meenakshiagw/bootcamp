require 'spec_helper'

describe North do

	it "gives west when left instruction is given" do
		expect(north.left).to eq (Directions::WEST)
	end

	it "gives east when right instruction is given" do
		expect(north.right).to eq (Directions::EAST)
	end
end