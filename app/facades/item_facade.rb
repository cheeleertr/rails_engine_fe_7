class ItemFacade
  def initialize
  end

  def get_items
    json = EngineService.get_items
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def get_item_by_id(item_id)
    json = EngineService.get_item_by_id(item_id)
    Item.new(json[:data])
  end
end