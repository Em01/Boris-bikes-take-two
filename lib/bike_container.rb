module BikeContainer

  BROKEN_BIKE_SELECTOR =  ->(bike){bike.broken? }
  #lambda
  #constant

   def has_bikes?
    @bikes.any?
    #do you have any element-if it says true then you do have bikes becuase there are bikes in it.
  end

    def release(bike)
    @bikes.delete(bike)
  end


    def available_bikes
    
    @bikes.reject(&BROKEN_BIKE_SELECTOR) 
    #all the ones that are not broken are available bikes/rejecting broken bikes
    #lambda
  end



  def broken_bikes
        @bikes.select(&BROKEN_BIKE_SELECTOR)
  end

end