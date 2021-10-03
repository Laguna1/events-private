# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  root 'events#index'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
