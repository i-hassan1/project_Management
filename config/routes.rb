Rails.application.routes.draw do
  resources :payments
  get 'comments/create'
  resources :clients
  resources :projects do
    resources :comments, only: %i[create]
  end
  devise_for :users
  root to: "home#index"
end
