require 'spec_helper'

describe Calculator do

	let(:calculator) { Calculator.new() }

	it "should add two number" do
		expect(calculator.add(1, 2)).to eq(3)
	end

	it "should subtract two number" do
		expect(calculator.subtract(1, 2)).to eq(-1)
	end

	it "should multiply two number" do
		expect(calculator.multiply(1, 2)).to eq(2)
	end

	it "should divide two number" do
		expect(calculator.divide(1, 2.0)).to eq(0.50)
	end

end