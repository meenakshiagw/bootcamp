require 'spec_helper'

describe Money do

	let(:money1) { Money.new(1, 50) }
	let(:money2) { Money.new(0, 50) }

	
	describe "+" do

		it "adds two sums of money" do
			expect(money1 + money2).to eq(Money.new(2, 0))
		end

		it "express commutative property" do
			expect(money1 + money2).to eq(money2 + money1) 
		end

		it "express associative property" do
			expect(money1 + money2).to eq(money2 + money1) 
		end

	end

	it "subtracts two sums of money" do
		expect(money1 - money2).to eq(Money.new(1, 0))
	end

	it "subtracts large amount from smaller amount" do
		expect(money2 - money1).to eq(Money.new(-1, 0))
	end

	it "addition returns a Money object" do
		expect((money1 + money2).class).to eq(Money)
	end

	describe "express the values in money" do

		it "express rupees" do
			expect(money1.rupee).to eq(1.50)
		end

		it "express paisa" do
			expect(money2.paisa).to eq(50)
		end

		it "express combination of rupee and paisa" do
			expect(money1.to_s).to eq("1 rupees 50 paisa")
		end
	end

end