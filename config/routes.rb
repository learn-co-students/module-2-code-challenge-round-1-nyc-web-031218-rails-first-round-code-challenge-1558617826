Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index] 
  
  #powers

  #heroines
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'

end
