require 'spec_helper'

describe Scanner do

	describe "rotate left" do

		it "moves forward" do
			expect(scanner.move).to eq (1, 0)
		end
	end
end