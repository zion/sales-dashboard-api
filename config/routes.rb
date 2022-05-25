Rails.application.routes.draw do
  jsonapi_resources :daily_item_sales
  jsonapi_resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/aggregate-sales', to: 'daily_item_sales#aggregate_sales'
end
