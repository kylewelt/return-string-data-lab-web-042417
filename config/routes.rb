Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, except: [:edit, :update, :destroy]
  get 'products/:id/description', to: 'products#description'
  get 'products/:id/inventory', to: 'products#inventory'
end
