require 'rails_helper'

describe 'Airbender service' do 
  it 'will return nation member data' do 
    response = AirbenderService.nation_members('fire nation')
    
    expect(response).to be_an(Array)
    expect(response[0]).to be_a(Hash)

    expect(response[0]).to have_key(:name)
    expect(response[0]).to have_key(:allies)
    expect(response[0]).to have_key(:enemies)
    expect(response[0]).to have_key(:affiliation)

    expect(response[0][:name]).to be_a(String)
    expect(response[0][:allies]).to be_a(Array)
    # expect(response[0][:allies][0]).to be_a(String)
    expect(response[0][:enemies]).to be_a(Array)
    expect(response[0][:affiliation]).to be_a(String)
  end
end

# could have dove deeper to add that the first element of the array is a string
# make response[0] a variable to reduce typing.