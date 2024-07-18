require 'rails_helper'

RSpec.describe 'Item Show', type: :feature do
  it "should show list of attributes for item", :vcr do
    @item = ItemFacade.new.get_items.first

    visit "/items/#{@item.id}"

    expect(page).to have_content(@item.name)
    expect(page).to have_content(@item.description)
    expect(page).to have_content(@item.unit_price)
  end
end