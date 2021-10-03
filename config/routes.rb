# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#show'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions/new'
  get '/signin', to: 'sessions/create'
 
  resources :users, only: [:new, :show, :create]
  resources :users, only: [:new, :destroy, :create]
  
  # root 'events#index'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
