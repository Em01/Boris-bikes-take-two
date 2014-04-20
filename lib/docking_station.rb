class DockingStation
  def initialize(bikes = [])
    @bikes = bikes 
  end

  def has_bikes?
    @bikes.any?
    #do you have any element-if it says true then you do have bikes becuase there are bikes in it.
  end

  def release_bike
    @bikes.pop unless @bikes.last.broken?
    #popping an element out of there
  end

end