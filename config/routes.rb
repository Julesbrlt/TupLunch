Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :profiles, except: [:index, :destroy]
  resources :recipe_ingredients
  resources :index_recap_recipes
  get "/dashboard", to: "pages#dashboard"
  resources :recipes, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
  end
  resources :favorites, only: [:index]
  resources :chats do
    resources :messages
  end
end
