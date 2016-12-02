Rails.application.routes.draw do
    
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'colonial_elegance_callsheet', to: 'pages#colonial_elegance_callsheet'
  
end

