class Service

  def conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def search_nation(query)
    response = conn.get("/api/v1/characters#{query}&perPage=497&page=1")
    JSON.parse(response.body, symbolize_names: true)
  end

end