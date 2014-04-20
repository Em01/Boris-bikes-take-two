require_relative 'bike_container'

class DockingStation
  include BikeContainer

  
  def initialize(bikes = [])
    @bikes = bikes 
  end

  def available_bikes
    
    @bikes.reject(&BROKEN_BIKE_SELECTOR) 
    #all the ones that are not broken are available bikes/rejecting broken bikes
    #lambda
  end


  def release_bike
    release(available_bikes.pop)
    #popping an element out of there
    #takes last available bike and deletes it from what the docking station has
  end


  def dock(bike)
    @bikes << bike
    nil
  end

  def release_broken_bikes
broken_bikes.map{|bike| release(bike) }
  end

end