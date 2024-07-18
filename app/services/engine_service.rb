class EngineService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.get_merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_by_id(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items_by_id(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_items
    response = conn.get("/api/v1/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_item_by_id(item_id)
    response = conn.get("/api/v1/items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end