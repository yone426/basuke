Rails.application.routes.draw do
  root to: "tweets#index"
  resources :tweets
  resources :events

end
