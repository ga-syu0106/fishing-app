Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :users, only:[:show, :edit, :update]
  resources :posts do
    resources :comments, only:[:create]
  end
  resources :municipalities, only:[:index]
  resources :fish_kinds, only:[:index]
end
