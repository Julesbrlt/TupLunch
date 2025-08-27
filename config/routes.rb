Rails.application.routes.draw do
  devise_for :users

  root to: "pages#landing"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/home", to: "pages#home"
  get "/dashboard", to: "pages#dashboard"

  resources :profiles, except: [:index, :destroy]
  resources :recipe_ingredients
  resources :index_recap_recipes
  resources :recipes, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
    resources :recap_recipes, only: [:create]
  end
  resources :recap_recipes, only: [:index, :destroy]
  resources :favorites, only: [:index]
  resources :chats do
    resources :messages
  end
end
