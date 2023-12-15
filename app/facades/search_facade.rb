class SearchFacade

  def nation_index(nation)
    service = Service.new
    query = "?affiliation=#{nation}"
    json = service.search_nation(query)

    json.map do |character|
      CharacterObject.new(character)
    end
  end

end