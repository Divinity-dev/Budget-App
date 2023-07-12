# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
 
  # resources :category_data
  
  resources :categories do
   resources :data
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
