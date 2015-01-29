require 'spec_helper'

describe Point do

	let(:point1) { Point.new(1,1) }
	let(:point2) { Point.new(1,1) }
	let(:point3) { Point.new(1,1) }

  it 'Returns the x-coordiante' do
    expect(point1.x).to eq 1
  end

  it 'Returns the y-coordiante' do
  	expect(point1.y).to eq 1
  end

  it 'Equality of points' do
  	expect(point1).to eq(point2)
  end

  it 'Comparision against nil' do
  	expect(point1 == nil).to eq false
  end

  it 'Reflexive property' do
  	expect(point1).to eq(point1)
  end

  it 'Symmetric property' do
  	expect(point1 == point2).to eq(point2 == point1)
  end

  it 'Transitive property' do
  	expect(point1 == point2 && point2 == point3 && point3 == point1).to be true
  end

  it 'Implements hash function' do
    expect(point1.hash).to eq(point2.hash)
  end

  it 'Returns the distance between points' do
    expect(point1.distance(point2)).to eq(0)
  end
  
end