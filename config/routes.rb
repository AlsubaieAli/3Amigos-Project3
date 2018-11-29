Rails.application.routes.draw do
  get "pages/home", as: "home"
  resources :comments
  resources :stores
  devise_for :users
  root "pages#home"
end
