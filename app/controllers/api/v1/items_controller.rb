class Api::V1::ItemsController < ApplicationController

  def index
    render json: ItemSerializer.new(Item.all)
  end

  def show
    render json: ItemSerializer.new(Item.find(params[:id]))
  end

  def create
  # render json: ItemSerializer.new(Item.create(name: params[:item][:name], description: params[:item][:description], unit_price: params[:item][:unit_price], merchant_id: params[:item][:merchant_id]))
    render json: ItemSerializer.new(Item.create(item_params))

  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :unit_price, :merchant_id)
  end
end
