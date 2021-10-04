# frozen_string_literal: true

Rails.application.routes.draw do
  
  devise_for :users
  root 'events#index'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
