class MerchantFacade
  def initialize
  end

  def get_merchants
    json = EngineService.get_merchants
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def get_merchant_by_id(merchant_id)
    json = EngineService.get_merchant_by_id(merchant_id)
    Merchant.new(json[:data])
  end

  def get_merchant_items_by_id(id)
    json = EngineService.get_merchant_items_by_id(id)
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end