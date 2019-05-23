Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index]

  get '/powers/new', to: 'powers#new'
  post '/powers', to: 'powers#create'
  get '/powers/:id', to: 'powers#show', as: "power"

  get '/heroines/new', to: 'heroines#new'
  post '/heroines', to: 'heroines#create'
  get '/heroines/:id', to: 'heroines#show', as: "heroine"
  

end
