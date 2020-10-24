Rails.application.routes.draw do

  resources :services, only: [:show, :index]
  resources :products, only: [:show, :index]
  resources :orders, only: [:show, :index]
  resources :carts, only: [:show] do
    post :add_service
    delete :delete_cart_item
  end
  
  devise_for :users
  root 'landing_page#landing'
  get 'about', to: 'landing_page#about'
  get 'products', to: 'landing_page#products'
  get 'store', to: 'landing_page#store'
  get 'reservations', to: 'landing_page#reservation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
