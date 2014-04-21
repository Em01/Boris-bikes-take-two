require 'docking_station'
require_relative 'bike_container_spec'

describe DockingStation do
  let (:bike) { double :bike, broken?: false }
  let(:station) { DockingStation.new([bike]) }

  it_behaves_like BikeContainer

  it 'cannot release a bike that is broken' do
    broken_bike = double :bike, broken?: true
    #the double stands in so we can test this
    station = DockingStation.new([broken_bike])

    station.release_bike

    expect(station).to have_bikes
  end

end



















