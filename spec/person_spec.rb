require 'person' 

describe Person do
  let(:person) { Person.new}
  let(:person_with_bike) { Person.new(:bike)}

  it 'has no bike when created' do
    expect(person).not_to have_bike
  end

  it 'can have a bike' do 
    person = Person.new(:bike) 
    # :bike is symbol bike and is an argument
    expect(person).to have_bike
    end


it 'can have a bike accident' do 
#passing a bike into the person. Expecting the bike to break. person is then hurt. 
  bike = double :bike
  person = Person.new(bike)
  expect(bike).to receive(:break!)
  #:break is refering to the method double should have
  person.fall_down
end

it 'can rent a bike from a docking station' do 
  station = double :station
  #double station is a stand in object for the station becuase we havent defined a station yet
  #this is a double as person has to do something to the station in order to get a bike
  expect(station).to receive(:release_bike)
  #expecting person to call  method on the station to release bike
  #person goes to the station and asks it to release a bike for them
  person.rent_bike_from(station)
end

it 'has a bike after renting one from the station' do
  station = double :station, release_bike: :bike 
  #dont really need to test if the release bike method was called or not in this case as already created a method to check that this was called so can write it here to include it as one of the m
  #methods that the double has. it is a symbol becuase we dont really care how the bike looks like becuase we arent actually going to do anything with it
expect(person.rent_bike_from(station)).to have_bike
#when a person does this action then they should have a bike
end

it 'returns a bike to a station' do
  station = double :station
expect(station).to receive(:dock).with(:bike)
  person_with_bike.return_bike_to(station)
  #this person has to have a bike
  end

  it 'has no bike after docking it' do 
    station = double :station, dock: nil
    person_with_bike.return_bike_to(station)
    expect(person_with_bike).not_to have_bike
  end
  #after the person has docked the bike they shouldnt have a bike
end