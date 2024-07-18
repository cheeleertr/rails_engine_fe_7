require 'rails_helper'

RSpec.describe 'Merchants Index', type: :feature do
  it "should show list of merchants as links to their show page", :vcr do
    @merchants = MerchantFacade.new.get_merchants

    visit "/merchants"

    @merchants.each do |merchant|
      expect(page).to have_link(merchant.name, href: "/merchants/#{merchant.id}")
    end
  end
end