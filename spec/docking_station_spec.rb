require 'docking_station'

describe DockingStation do
  let (:bike) { double :bike, broken?: false }
  let(:station) { DockingStation.new([bike]) }
  

  it 'has no bikes' do 
    expect(DockingStation.new).not_to have_bikes
  end

  it 'can be created with bikes' do 
    expect(station).to have_bikes
    end

    it 'can release a bike' do
      station.release_bike
      expect(station).not_to have_bikes
  end
  #if you release a bike should not have bikes
  
  it 'cannot release a bike that is broken' do
    broken_bike = double :bike, broken?: true
    #the double stands in so we can test this
    station = DockingStation.new([broken_bike])

    station.release_bike

    expect(station).to have_bikes
  end

  it 'has available bikes' do 
    expect(station.available_bikes).to eq [bike]
  end

  it 'can dock a bike' do 
    station = DockingStation.new
    station.dock(:bike)
    expect(station).to have_bikes
  end

  it 'lets us know that we returned the bike and dont have one' do

  station = DockingStation.new
  expect(station.dock(:bike)).to be_nil
  end

  context 'releasing broken bikes' do 
    let (:broken_bike_two) { double :bike, broken?: true }
    let(:broken_bike) { double :bike, broken?: true }
    let(:station) { DockingStation.new([broken_bike, broken_bike_two]) }
  

  it 'releases all broken bikes' do 
  
  expect(station.release_broken_bikes).to eq [broken_bike, broken_bike_two]
  end

  it 'has no bikes after releasing the broken bikes' do 
    station.release_broken_bikes
    expect(station).not_to have_bikes
  end

    it 'shows us the broken bikes' do
      expect(station.broken_bikes).to eq [broken_bike, broken_bike_two]
    end













end
end


















