# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#show'
  get '/signup', to: 'users#new'
  resources :users, only: [:new, :index, :create]
  
  # root 'events#index'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
