class Api::V1::SearchesController < ApplicationController

  def show
    keyword = params[:name]
    # if keyword.present?
    merchant_found = Merchant.search(keyword)
    if merchant_found.present?
      render json: MerchantSerializer.new(merchant_found.first)
    else
      render json: MerchantSerializer.new(merchant_found)
    end

  end


  def index
    keyword = params[:name]
    item_found = Item.search(keyword)
    render json: ItemSerializer.new(item_found)
  end
end
