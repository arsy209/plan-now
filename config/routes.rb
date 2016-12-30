Rails.application.routes.draw do
  devise_for :users
  root 'events#index'

  resources :users, only: [:index, :show]

  resources :comments, only: [:create, :update, :destroy]

  resources :events do
    resources :invitations
  end

  resources :attendings, only: [:create, :update]
end
