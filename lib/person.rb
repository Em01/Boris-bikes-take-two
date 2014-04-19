class Person
  def initialize(bike=nil)
    #if not passing any argument then bike will be set to nil.
  @bike = bike 
end

  def has_bike?
  !@bike.nil?
  #checking if its nil
  end

def fall_down
  @bike.break!
end

def rent_bike_from(station)
@bike = station.release_bike
self
end

def return_bike_to(station)
  @bike = station.dock(@bike)
  #station when dock the bike returns nil
  #set whatever the station returns to me to mu bike (@bike)
  #so my bike will be nil so therefore no bike is had
end

end