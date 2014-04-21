require_relative 'bike_container'

class Van
  include BikeContainer
  alias :fixed_bikes :available_bikes 
  alias :load :dock



  def initialize(bikes=[])
    #if the array is empty it has no bikes-nil false
    @bikes = bikes
  end

  def pickup_broken_bikes_from(place)
    @bikes.concat(place.release_broken_bikes)
  end

  
  
end
