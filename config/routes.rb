Rails.application.routes.draw do
  resources :powers
  # get "/powers/:id", to: "powers#show", as: "power"
  resources :heroines, except: [:show]
  get "/heroines/:id", to: "heroines#show", as: 'heroine_show'
end
