class Van
  attr_reader :bikes

  def initialize(bikes=[])
    #if the array is empty it has no bikes-nil false
    @bikes = bikes
  end

def has_bikes?
  @bikes.any?
  #expected has bikes to return false got true-fixed
  end

  def pickup_broken_bikes_from(place)
    @bikes.concat(place.release_broken_bikes)
  end

  def drop_broken_bikes_into(place)
    @bikes.select {|bike| bike.broken?}.each{|bike| place.dock(@bikes.delete(bike)) }
    
  end



end