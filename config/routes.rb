Rails.application.routes.draw do
  post '/heroines/filter', to: 'heroines#filter', as: 'filter'
  get '/', to: 'application#welcome', as: 'welcome'
  resources :powers
  resources :heroines
end
