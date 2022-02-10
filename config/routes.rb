Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      get '/merchants/find', to: 'searches#show'
      get '/items/find_all', to: 'searches#index'
      resources :items do
        resources :merchant, only: [:index,], controller: "item_merchant"
      end
      resources :merchants, only: [:index, :show] do
        resources :items, only: [:index], controller: "merchant_items"
      end
    end
  end
end
