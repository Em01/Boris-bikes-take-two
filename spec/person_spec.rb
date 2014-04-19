require 'person' 

describe Person do

  it 'has no bike when created' do
    expect(Person.new).not_to have_bike
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
end