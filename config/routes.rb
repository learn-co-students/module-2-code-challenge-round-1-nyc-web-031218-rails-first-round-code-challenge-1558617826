Rails.application.routes.draw do

  root 'heroines#index'
  resources :powers, only: [:index, :show]
  resources :heroines

end
