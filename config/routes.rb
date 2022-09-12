Rails.application.routes.draw do
  resources :clients
  resources :projects
  get 'home/index'
  devise_for :users
  root to: "home#index"
end
