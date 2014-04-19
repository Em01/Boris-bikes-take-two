require 'bike'
#require the bike

describe Bike do
#describing the bike
let(:bike) { Bike.new }
let(:broken_bike) { Bike.new.break! }
#refactored code
it 'is not broken when created' do 
expect(Bike.new).not_to be_broken
end
#this is the first test because the proto bike will not be broken
#.new becuase it is a new bike
it 'can break' do
expect(broken_bike).to be_broken
end
#This is the next relevent test for the bike to break 

it 'can be fixed' do
  #this is the next most relevent test
  #next to create the bike
  broken_bike.fix!
  #then the expectations
  expect(bike).not_to be_broken


end








end