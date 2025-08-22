Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :events, only: [:index, :show] do
    resources :goals, only: [:new, :create, :show]
  end

  resources :goals, only: [:new, :create] do
    resources :programs, only: [:show, :new, :create] do
      resources :sessions, only: [:show]
    end
  end

  resources :programs do
    resources :sessions, only: [:show]
  end

  # resources :programs, only: [:show, ] do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
