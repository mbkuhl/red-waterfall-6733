require 'rails_helper'

describe CharacterObject do
  it "Exists and has attributes", :vcr do
    service = Service.new
    query = "?affiliation=fire+nation"
    char_data = service.search_nation(query).first
    @character = CharacterObject.new(char_data)
    expect(@character).to be_a(CharacterObject)
    expect(@character.id).to eq("5cf5679a915ecad153ab68da")
    expect(@character.name).to eq("Azula")
    expect(@character.allies).to eq(["Ozai", "Zuko "])
    expect(@character.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
    expect(@character.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(@character.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
  end
end
