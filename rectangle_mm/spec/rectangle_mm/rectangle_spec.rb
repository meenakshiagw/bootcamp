require 'spec_helper'

describe Rectangle do

	let(:side1) { Conversion.new(0, 1) }
	let(:side2) { Conversion.new(0, 1) }
  let(:rectangle) { Rectangle.new(side1, side2) }

  it "shows the perimeter in mm" do
  	expect(rectangle.perimeter.mm).to eq(40.0)
  end

  it "shows the perimeter in cm" do
  	expect(rectangle.perimeter.cm).to eq(4.0)
  end

  it "shows the perimeter in m" do
  	expect(rectangle.perimeter.m).to eq(0.04)
  end

end