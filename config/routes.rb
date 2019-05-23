Rails.application.routes.draw do

  get "/heroines/filter", to: 'heroines#filter', as: 'filter'
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]

end
