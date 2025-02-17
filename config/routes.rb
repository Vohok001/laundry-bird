Rails.application.routes.draw do
  root 'pages#landing'

  get 'how_it_works', to: 'pages#how_it_works'
  get 'about', to: 'pages#about'

  devise_for :users
  resources :orders, only: [:new, :create, :show]
  resources :services, only: [:index, :show]
  resources :time_slots, only: [:index, :show]
  get 'book_now', to: 'orders#new'
  get 'profile', to: 'users#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
