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
  get '/users/sign_in' => 'users/registrations#new',as: :signin
  resources :players
  resources :game_players

end
