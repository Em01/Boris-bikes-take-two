class Bike
def initialize
fix!
end

def broken?
@broken
end

def break!
@broken = true
self
#this returns the instance of the bike otherwise it would return true
#adding self so test passes because if we break a bike we return true
end

def fix!
  @broken = false
end
end