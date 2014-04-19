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
end