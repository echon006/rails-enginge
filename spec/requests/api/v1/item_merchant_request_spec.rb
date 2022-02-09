require 'rails_helper'


RSpec.describe "Merchant items API" do
  it "" do
    merchant = create(:merchant)

    item = create(:item, merchant_id: merchant.id)

    get "/api/v1/items/#{item.id}/merchant"

    expect(response).to be_successful

    item_parsed = JSON.parse(response.body, symbolize_names: true)

    expect(item_parsed[:data]).to have_key(:id)
    expect(item_parsed[:data][:id]).to be_an(String)

    expect(item_parsed[:data][:attributes]).to have_key(:name)
    expect(item_parsed[:data][:attributes][:name]).to be_a(String)

  end
end
