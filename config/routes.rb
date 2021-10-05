# frozen_string_literal: true

Rails.application.routes.draw do
  
  devise_for :users
  resources :users
  resources :events
  resources :visitings

  resources :visitings do
    match '/join_event', to: 'visitings#join_event', via: :post, on: :collection
  end

  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
