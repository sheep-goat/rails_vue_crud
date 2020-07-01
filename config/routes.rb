Rails.application.routes.draw do
  root 'home#index'
  resources :books, only: [:index]

  namespace :api do
    resources :books, only: [:index, :show, :create]
  end
end
