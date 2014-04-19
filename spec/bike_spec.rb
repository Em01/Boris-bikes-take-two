require 'bike'
#require the bike

describe Bike do
#describing the bike

it 'is not broken when created' do 
expect(Bike.new).not_to be_broken
end
#this is the first test because the proto bike will not be broken

it 'can break' do
bike = Bike.new
bike.break!
expect(bike).to be_broken
end
#This is the next relevent test for the bike to break 

it 'can be fixed' do
  #this is the next most relevent test
  #next to create the bike
  bike = Bike.new
  bike.break!
  bike.fix!
  #then the expectations
  expect(bike).not_to be_broken


end








end