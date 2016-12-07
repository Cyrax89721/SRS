Rails.application.routes.draw do
    
  devise_for :users
  devise_for :views
  devise_for :models
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'menards_callsheet', to: 'pages#menards_callsheet'
  get 'orders', to: 'pages#orders'
  get 'map', to: 'pages#map'
  resources :stores
  resources :users do
    resource :profiles
  end
end

