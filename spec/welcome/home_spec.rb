require "rails_helper"

RSpec.describe "Landing Home", type: :feature do

  it "Will give a dropdown field with the four nations that will search for members of that nation" do
    visit "/"

    expect(page).to  have_content("Search For Members by their Nation")

    select "Fire Nation", from: :nation

    click_button "Search For Members"

    expect(current_path).to eq("/search")
  end
end