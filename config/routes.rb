# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :user_roles
  resources :home, only: [:index] do
    collection do
      get :about
      get :contact_us
    end
  end
  resources :admin,only: [:index] do
    collection do
      get :users_list
      get :user_roles_list
    end
  end
end
