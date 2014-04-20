require 'van'

describe Van do
  it 'has no bikes' do 
    expect(Van.new).not_to have_bikes
  end
  
end