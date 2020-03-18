Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/destroy'

  devise_for :users
  root to: 'exhibits#index'
  namespace :exhibits do
    resources :searches, only: :index
  end
  resources :exhibits, only: [:index, :new, :create, :show] 
  resources :requests, only: [:index, :new, :create, :show]
  resources :users, only: :show
  resources :likes, only: [:create, :destroy]
end
