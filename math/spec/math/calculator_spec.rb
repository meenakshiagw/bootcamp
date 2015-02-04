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

	it "should find absolute value" do
		calculator.subtract(5)
		expect(calculator.abs).to eq(5)
	end

	it "should negate the value" do
		calculator.add(2)
		expect(calculator.neg).to eq(-2)
	end

	it "should square root the value" do
		calculator.add(4)
		expect(calculator.sqrt).to eq(2)
	end

	it "should square the value" do
		calculator.add(2)
		expect(calculator.sqr).to eq(4)
	end

	it "should cube the value" do
		calculator.add(2)
		expect(calculator.cube).to eq(8)
	end

	it "should cube root the value" do
		calculator.add(8)
		expect(calculator.cbrt).to eq(2)
	end



end