class DockingStation
  def initialize(bikes = [])
    @bikes = bikes 
  end

  def has_bikes?
    @bikes.any?
    #do you have any element-if it says true then you do have bikes becuase there are bikes in it.
  end

  def available_bikes
    @bikes.reject {|bike| bike.broken? }
    #all the ones that are not broken are available bikes/rejecting broken bikes
  end

  def broken_bikes
        @bikes.select {|bike| bike.broken?}
  end


  def release_bike
    @bikes.delete(available_bikes.pop)
    #popping an element out of there
    #takes last available bike and deletes it from what the docking station has
  end

  def dock(bike)
    @bikes << bike
    nil
  end

  def release_broken_bikes
broken_bikes.map{|bike| @bikes.delete(bike) }
  end

end