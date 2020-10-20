Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :posts, only: [:index, :new, :create]
end
