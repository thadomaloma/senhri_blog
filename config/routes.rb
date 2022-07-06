Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/friends', to: 'friendships#index'
  get '/notifications', to: 'friendships#notification'
  patch '/addfriend/:id', to: 'friendships#update'
  post '/addfriend', to: 'friendships#create'
  delete '/addfriend/:id', to: 'friendships#destroy'
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :posts
  root 'home#index'

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    post 'users/guest_admin_sign_in', to: 'users/sessions#guest_admin_sign_in'
  end
end
