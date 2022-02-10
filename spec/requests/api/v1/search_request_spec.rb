require 'rails_helper'


RSpec.describe "Search API" do

  it "returns a merchant of Search#show, merchant with keyword" do
    create_list(:merchant, 3)

    get '/api/v1/merchants/find?name=a'

    expect(response).to be_successful

    merchant = JSON.parse(response.body, symbolize_names: true)

    expect(merchant[:data]).to have_key(:id)
    expect(merchant[:data][:id]).to be_an(String)

    expect(merchant[:data]).to have_key(:type)
    expect(merchant[:data][:type]).to eq("merchant")

    expect(merchant[:data][:attributes]).to have_key(:name)
    expect(merchant[:data][:attributes][:name]).to be_a(String)

  end

  it "returns empty object if no match" do
    create_list(:merchant, 3)

    get '/api/v1/merchants/find?name=NOMATCH'
    merchant = JSON.parse(response.body, symbolize_names: true)
    
    merchant_id = merchant[:data][:id]
    expect(merchant[:data]).to eq({:attributes=>{:name=>nil}, :id=>merchant_id, :type=>"merchant"})
  end

  it "returns all items of Search#index, item with keyword" do
    merchant = create(:merchant)

    create_list(:item, 3, merchant_id: merchant.id)

    get "/api/v1/items/find_all?name=a"

    expect(response).to be_successful

    items = JSON.parse(response.body, symbolize_names: true)

    items[:data].each do |item|
      expect(item).to have_key(:id)
      expect(item[:id]).to be_an(String)

      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes][:name]).to be_a(String)

      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes][:description]).to be_a(String)

      expect(item[:attributes]).to have_key(:unit_price)
      expect(item[:attributes][:unit_price]).to be_a(Float)
    end
  end


  it "returns all items of Search#index, item with keyword" do
    merchant = create(:merchant)

    create_list(:item, 3, merchant_id: merchant.id)

    get "/api/v1/items/find_all?name=z"

    expect(response).to be_successful

    items = JSON.parse(response.body, symbolize_names: true)

    expect(items[:data]).to eq([])
  end
end
