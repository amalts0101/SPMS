Rails.application.routes.draw do
  devise_for :users
  resources :projects, only: [:index]
  resources :activities, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
end
