require 'spec_helper'

describe Line do

	let(:point1) { Point.new(1, 1) }
	let(:point2) { Point.new(4, 5) }
	let(:line1) { Line.new(point1, point2) }
	let(:line2) { Line.new(point2, point1) }
	let(:line3) { Line.new(point2, point1) }

  it 'calculates length of line' do
    expect(line1.length).to eq 5
  end

  it 'equality of lines' do
  	expect(line1 == line2).to eq true
  end

  it 'comparision against nil' do
  	expect(line1 == nil).to eq false
  end

  it 'Reflexive Property' do
  	expect(line1).to eq(line1)
  end

  it 'Symmetric Property' do
  	expect(line1 == line2).to eq(line2 == line1)
  end

  it 'Transitive Property' do
  	expect(line1 == line2 && line2 == line3 && line3 == line1).to be true
  end

  it 'implements hash' do
    expect(line1.hash).to eq(line2.hash)
  end
end