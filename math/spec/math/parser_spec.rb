require 'spec_helper'

describe Parser do

	let(:calculator) { Calculator.new() }
	let(:parser) { Parser.new(calculator) }

	it "understands the add function" do
		expect(parser.input("add 5.0")).to eq(5.0)
	end

	it "understands the subtract function" do
		expect(parser.input("subtract 2.0")).to eq(-2.0)
	end

	it "understands the multiply function" do
		expect(parser.input("multiply 3.0")).to eq(0.0)
	end

	it "understands the divide function" do
		expect(parser.input("divide 1.0")).to eq(0.0)
	end

	it "understands the cancel function" do
		expect(parser.input("cancel")).to eq(0.0)
	end

	it "doesn't understand invalid inputs" do
		expect(parser.input("asdfadvbc")).to eq("Incorrect input")
	end

end