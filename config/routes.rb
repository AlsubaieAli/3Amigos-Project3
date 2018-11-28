Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/edit'
  resources :stores
  devise_for :users
  root "stores#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
