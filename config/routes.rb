# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/about', to: 'home#about', as: 'about'
  get 'home/contact_us', to: 'home#contact_us', as: 'contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
