Rails.application.routes.draw do
  root "photos#index"

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get "/:username" => "users#show", as: :user

  get "/:username/liked" => "users#liked", as: :liked

  get "/:username/feed" => "users#feed", as: :feed

  get "/:username/following" => "users#following", as: :following

  get "/:username/followers" => "users#followers", as: :followers
end
