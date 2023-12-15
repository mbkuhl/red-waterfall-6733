class MarketService

  def market_conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def get_characters
    response = market_conn.get("/api/v1/characters")
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_market(id)
    response = market_conn.get("/api/v0/markets/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_markets(query)
    response = market_conn.get("/api/v0/markets/search#{query}")
    JSON.parse(response.body, symbolize_names: true)
  end
end