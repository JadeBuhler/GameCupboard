Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  get 'pages/index'
  get '/products', to: 'board_games#index', as: 'products'
  get '/products/:id', to: 'board_games#show', as: 'product', id: /\d+/
  get '/products/new', to: 'board_games#new_game', as: 'new_product'
  get 'search_results', to: 'board_games#search_results', as: 'search_results'
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'


end
