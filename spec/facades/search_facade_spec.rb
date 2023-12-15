require 'rails_helper'

describe SearchFacade do
  it "can create an array of character objects from API data", :vcr do
    sf = SearchFacade.new
    populace = sf.nation_index("fire+nation")
    populace.each do |character|
      expect(character).to be_a CharacterObject
      expect(character.name).to_not be nil
      expect(character.allies).to_not be nil
      expect(character.enemies).to_not be nil
      expect(character.affiliation).to_not be nil
      expect(character.id).to_not be nil
    end 
  end
end