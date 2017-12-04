Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  get 'pages/index'
  get '/products', to: 'board_games#index', as: 'products'
  get '/products/:id', to: 'board_games#show', as: 'product', id: /\d+/
  get '/products/:sort', to: 'board_games#index', as: 'products/sorted'
  get '/products(/:search(/:filter_by))', to: 'board_games#index', as: 'products/search'
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/cart', to: 'pages#cart', as: 'cart'
  post '/cart/:id', to: 'pages#add_to_cart', as: 'add_to_cart', id: /\d+/
  post '/cart/delete/:id', to: 'pages#remove_from_cart', as: 'remove_from_cart', id: /\d+/
  get '/checkout', to: 'pages#checkout', as: 'checkout'
  post 'checkout_order', to: 'pages#checkout_order', as: 'checkout_order'
end
