Rails.application.routes.draw do
  devise_for :users
  resources :order_line_items
  resources :orders
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
end
