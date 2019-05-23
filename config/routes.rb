Rails.application.routes.draw do
  get '/heroines/power/search', to: 'heroines#search', as: 'heroine_search'
  resources :powers
  resources :heroines

end
