Rails.application.routes.draw do
  resources :powers, only: [:index]
  # resources :heroines, only: [:index] 
  
  #powers
  get '/powers/:id', to: 'powers#show', as: 'power'

  #heroines
  get '/heroines', to: 'heroines#index', as: 'heroines'
  post '/heroines', to: 'heroines#index'
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  post '/heroines/new', to: 'heroines#create'
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  

end
