require 'rails_helper'

RSpec.describe 'Merchant Show', type: :feature do
  it "should show list of attributes for merchant", :vcr do
    @merchant = MerchantFacade.new.get_merchant_by_id(1)
    @items = MerchantFacade.new.get_merchant_items_by_id(@merchant.id)

    visit "/merchants/#{@merchant.id}"
    @items.each do |item|
      expect(page).to have_content(item.name)
    end
  end
end