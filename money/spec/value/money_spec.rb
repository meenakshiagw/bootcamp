require 'spec_helper'

describe Money do

	let(:money1) { Money.new(1.50, 0.00) }
	let(:money2) { Money.new(0.00, 0.50) }

	it "adds two sums of money" do
		expect(money1 + money2).to eq(2)
	end

end