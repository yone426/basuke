Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets
  resources :events
  resources :games do
    collection do
      get 'search'
    end
  end
  resources :players
  resources :game_players

end
