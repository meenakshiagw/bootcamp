require 'spec_helper'

describe Rectangle do

  let(:rectangle) { Rectangle.new(1, "cm", 1, "cm") }

  it "shows the perimeter in mm" do
  	expect(rectangle.perimeter("mm")).to eq(40.0)
  end

  it "shows the perimeter in cm" do
  	expect(rectangle.perimeter("cm")).to eq(4.0)
  end

  it "shows the perimeter in m" do
  	expect(rectangle.perimeter("m")).to eq(0.04)
  end
end