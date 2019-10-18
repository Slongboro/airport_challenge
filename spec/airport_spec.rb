require 'airport'

describe Airport do

  it ' should be able to respond to land' do
    airport = Airport.new
    expect(airport).to respond_to(:land)
  end

  it 'should be able to respond to take_off' do
    airport = Airport.new
    expect(airport).to respond_to(:take_off)
  end

  it 'should be able to respond to weather' do
    airport = Airport.new
    expect(airport).to respond_to(:weather)
  end

  it 'has a default capacity' do
    airport = Airport.new
    expect(airport.capacity).to eq Airport::DEFAULT_CAPACITY
  end

  it 'should land a plane' do
    plane = Plane.new
    plane.land
    expect(plane.land).to include plane
  end

end
