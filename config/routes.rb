Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :games, only: [:show, :create] do
    member do
      patch :continue
    end
    resources :battles, only: [:create]
  end
  resources :rounds, only: [] do
    resources :game_answers, only: [:create]
  end
end
