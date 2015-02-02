require 'spec_helper'

describe Conversion do

  let(:conversion) { Conversion.new(0, 1) }
  let(:conversion_duplicate) { Conversion.new(0, 1) }

  it "converts the units into cm" do
  	expect(conversion.cm).to eq(1.0)
  end

  it "converts the units into mm" do
  	expect(conversion.mm).to eq(10.0)
  end

  it "converts the units into m" do
    expect(conversion.m).to eq(0.01)
  end

  it "shows the equality of units" do
    expect(conversion == conversion_duplicate).to be_truthy
  end

  it "add all the units" do
    expect(conversion + conversion_duplicate).to eq(Conversion.new(0, 2))
  end
end