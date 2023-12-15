require "rails_helper"

RSpec.describe "Landing Home", type: :feature do

  it "Will give a dropdown field with the four nations that will search for members of that nation" do
    visit "/"

    expect(page).to  have_content("Search For Members by their Nation")

    select "Fire Nation", from: :nation

    click_button "Search For Members"

    expect(current_path).to eq("/search")
  end

  it "Search index view has the total number of fire nation characters, and detailed information on the first 25" do
    visit "/"
    select "Fire Nation", from: :nation
    click_button "Search For Members"
    expect(page).to have_content("Fire Nation population: 97")
    expect(page).to have_content("First 25 members:")
    
    within("#5cf5679a915ecad153ab68da") do
      expect(page).to have_content("Name: Azula")
      expect(page).to have_xpath("//img[@src = 'https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941']")
      expect(page).to have_content("Allies: Ozai, Zuko")
      expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa")
      expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    end

    within("#5cf5679a915ecad153ab692b") do
      expect(page).to have_content("Name: Fire Nation train engineer")
      expect(page).to have_xpath("//img[@src = 'https://vignette.wikia.nocookie.net/avatar/images/c/ca/Train_engineer.png/revision/latest?cb=20130308171418']")
      expect(page).to have_content("Allies: Aang")
      expect(page).to have_content("Enemies: Combustion Man")
      expect(page).to have_content("Affiliation: Fire Nation Fire Nation train")
    end

    expect(page).to_not have_content("Name: Kwan")

  end
end