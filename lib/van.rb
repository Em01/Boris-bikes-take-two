require_relative 'bike_container'

class Van
  include BikeContainer
  attr_reader :bikes

  def initialize(bikes=[])
    #if the array is empty it has no bikes-nil false
    @bikes = bikes
  end

  def pickup_broken_bikes_from(place)
    @bikes.concat(place.release_broken_bikes)
  end

  def drop_broken_bikes_into(place)
   broken_bikes.each do |bike| 
   place.dock(release(bike)) 

  end

end

end