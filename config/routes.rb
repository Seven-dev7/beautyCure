Rails.application.routes.draw do
  devise_for :users
  root 'landing_page#landing'
  get 'about', to: 'landing_page#about'
  get 'products', to: 'landing_page#products'
  get 'store', to: 'landing_page#store'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
