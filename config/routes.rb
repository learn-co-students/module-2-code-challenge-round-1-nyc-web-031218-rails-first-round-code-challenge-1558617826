Rails.application.routes.draw do
  resources :powers, only: [:index, :new, :show, :create, :edit, :update]
  resources :heroines, only: [:index, :new, :show, :create, :edit, :update]
  # get '/heroines', to:'heroines#search', as: 'search'
end
