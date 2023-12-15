require 'rails_helper'

describe Service do
  it "retrieves api details about a characters with a specific affiliation", :vcr do
    service = Service.new
    query = "?affiliation=fire+nation"
    json = service.search_nation(query)
    character = json.first

    expect(json).to be_a Array
    expect(character).to be_a Hash
  
    json.each do |char|
      expect(char).to have_key :_id
      expect(char[:_id]).to be_a(String)

      expect(char).to have_key :name
      expect(char[:name]).to be_a(String)

      expect(char).to have_key :allies
      expect(char[:allies]).to be_a(Array)

      expect(char).to have_key :enemies
      expect(char[:enemies]).to be_a(Array)

      expect(char).to have_key :affiliation
      expect(char[:affiliation]).to be_a(String)
    end


    expect(character).to have_key :photoUrl
    expect(character[:photoUrl]).to be_a(String)
  end
end
