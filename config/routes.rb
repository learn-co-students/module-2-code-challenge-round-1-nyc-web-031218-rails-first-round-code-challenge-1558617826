Rails.application.routes.draw do

  get '/', to: redirect('/heroines')

  get '/powers', to: 'powers#index'
  get '/powers/new', to: 'powers#new', as: 'new_power'
  post '/powers', to: 'powers#create'
  get '/powers/:id/edit', to: 'powers#edit'
  post '/powers/:id', to: 'powers#update'
  get '/powers/:id', to: 'powers#show', as: 'power'
  delete '/powers/:id', to: 'powers#delete'

  get '/heroines', to: 'heroines#index'
  get '/heroines/new', to: 'heroines#new', as: 'new_heroine'
  post '/heroines', to: 'heroines#create'
  get '/heroines/:id/edit', to: 'heroines#edit'
  post '/heroines/:id', to: 'heroines#update'
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  delete '/heroines/:id', to: 'heroines#delete'
end
