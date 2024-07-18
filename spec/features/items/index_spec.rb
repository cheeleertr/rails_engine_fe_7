require 'rails_helper'

RSpec.describe 'Items Index', type: :feature do
  it "should show list of items as links to their show page", :vcr do
    @items = ItemFacade.new.get_items

    visit "/items"

    @items.each do |item|
      expect(page).to have_link(item.name, href: "/items/#{item.id}")
    end
  end
end