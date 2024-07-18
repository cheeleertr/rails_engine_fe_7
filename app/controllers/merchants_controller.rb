class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.get_merchants
  end

  def show
    @merchant = MerchantFacade.new.get_merchant_by_id(params[:id])
    @merchant_items = MerchantFacade.new.get_merchant_items_by_id(params[:id])
  end
end