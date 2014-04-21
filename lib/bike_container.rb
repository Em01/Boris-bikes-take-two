module BikeContainer

  BROKEN_BIKE_SELECTOR =  ->(bike){bike.broken? }
  #lambda
  #constant

  def has_bikes?
    @bikes.any?
  end

  def bikes
    @bikes
  end

  def release(bike)
    @bikes.delete(bike)
  end

   def dock(bike)
  @bikes << bike
  nil
end
    def release_bike
      release(available_bikes.pop)
  end



    def available_bikes
    
    @bikes.reject(&BROKEN_BIKE_SELECTOR) 
    #all the ones that are not broken are available bikes/rejecting broken bikes
    #lambda
  end



  def broken_bikes
        @bikes.select(&BROKEN_BIKE_SELECTOR)
  end

  def drop_broken_bikes_into(place)
    drop_into(place, broken_bikes)
end
end