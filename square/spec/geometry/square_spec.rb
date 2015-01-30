require 'spec_helper'

describe Square do

	let(:square) { Square.new(3) }

	it "calculates the area of the square" do
		expect(square.area).to eq(9)
	end

	it "calculates the perimeter of the square" do
		expect(square.perimeter).to eq(12)
	end

end