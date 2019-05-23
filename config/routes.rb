Rails.application.routes.draw do
  get '/', to: "application#welcome", as: "welcome"
  resources :powers
  resources :heroines
end
