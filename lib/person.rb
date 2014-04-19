class Person
  def initialize(bike=nil)
    #if not passing any argument then bike will be set to nil.
  @bike = bike 
end

  def has_bike?
    !@bike.nil?
  end

def fall_down
  @bike.break!
end
end