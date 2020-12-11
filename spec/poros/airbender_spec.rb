require 'rails_helper'

describe 'airbender PORO' do
  it 'creates attributes' do 
    airbender_data = {:_id=>"5cf5679a915ecad153ab68fd", 
                      :allies=>["Ozai"], 
                      :enemies=>["Earth Kingdom"], 
                      :name=>"Chan (Fire Nation admiral)", 
                      :affiliation=>"Fire Nation Navy"}

    airbender = Character.new(airbender_data)

    expect(airbender.name).to eq(airbender_data[:name])
    expect(airbender.image).to eq(airbender_data[:image])
    expect(airbender.allies).to eq(airbender_data[:allies].join(', '))
    expect(airbender.enemies).to eq(airbender_data[:enemies].join(', '))
    expect(airbender.affiliation).to eq(airbender_data[:affiliation])
  end
end