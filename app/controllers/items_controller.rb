class ItemsController < ApplicationController
  def index
    @items = ItemFacade.new.get_items
  end

  def show
    @item = ItemFacade.new.get_item_by_id(params[:id])
  end
end