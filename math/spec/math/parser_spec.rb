require 'spec_helper'

describe Parser do

	let(:calculator) { Calculator.new() }
	let(:parser) { Parser.new(calculator) }

	it "understands the add function" do
		parser.input("add 5.0")
		expect(parser.output).to eq(5.0)
	end

	it "understands the subtract function" do
		parser.input("subtract 2.0")
		expect(parser.output).to eq(-2.0)
	end

	it "understands the multiply function" do
		parser.input("multiply 3.0")
		expect(parser.output).to eq(0.0)
	end

	it "understands the divide function" do
		parser.input("divide 1.0")
		expect(parser.output).to eq(0.0)
	end

	it "understands the cancel function" do
		parser.input("cancel")
		expect(parser.output).to eq(0.0)
	end

	it "understands the exit function" do
		parser.input("exit")
		expect(parser.output).to eq(0.0)
	end

end