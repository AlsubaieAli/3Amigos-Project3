Rails.application.routes.draw do
  get "pages/home", as: "home"
  resources :comments
  resources :tags
  resources :categories
  resources :stores
  resources :contact
  devise_for :users
  root "pages#home"
end
