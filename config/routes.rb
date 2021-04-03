Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :users, only:[:show, :edit, :update]
  resources :posts
  resources :municipalities, only:[:index]
end
