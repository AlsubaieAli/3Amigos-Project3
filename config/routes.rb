Rails.application.routes.draw do
  get "pages/home", as: "home"
  resources :comments
  resources :stores
  resources :contact
  devise_for :users
  root "pages#home"
end
