Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get "pages/home", as: "home"
  resources :comments
  resources :tags
  resources :categories
  resources :stores
  resources :contact
  devise_for :users
  get "/search", to: "pages#search"
  root "pages#home"
end
