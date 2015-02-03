require 'spec_helper'

describe Calculator do

	let(:calculator) { Calculator.new() }

	it "should add two number" do
		expect(calculator.add(1)).to eq(1)
	end

	it "should subtract two number" do
		expect(calculator.subtract(1)).to eq(-1)
	end

	it "should multiply two number" do
		expect(calculator.multiply(1)).to eq(0)
	end

	it "should divide two number" do
		expect(calculator.divide(1)).to eq(0)
	end

	it "should reset the counter" do
		expect(calculator.cancel).to eq(0)
	end

end