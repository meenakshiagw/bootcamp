require 'spec_helper'

describe Money do

	let(:money1) { Money.new(1, 50) }
	let(:money1_duplicate) { Money.new(1, 50) }
	let(:money2) { Money.new(0, 50) }
	let(:money3) { Money.new(1, 10) }

	
	describe "+" do

		it "adds two sums of money" do
			expect(money1 + money2).to eq(Money.new(2, 0))
		end

		it "express commutative property" do
			expect(money1 + money2).to eq(money2 + money1) 
		end

		it "express associative property" do
			expect((money1 + money2) + money3).to eq(money2 + (money1 + money3)) 
		end

		it "express additive identity property" do
			expect(money1 + Money.new(0, 0)).to eq(money1) 
		end

	end

	it "sorts the multiple values of money" do
		expect([money1, money2, money3, money1_duplicate].sort).to eq([money2, money3, money1, money1_duplicate])
	end

	it "identifies the larger value of money" do
		#The user actually wants to use the comparison operators. (<, <=, >, >=)
		expect(money1.comparison(money2)).to eq(money1)
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