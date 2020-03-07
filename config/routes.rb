Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets
  resources :events
  resources :games
  resources :players
end
