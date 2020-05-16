Rails.application.routes.draw do

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  get '/profil', to: 'static_pages#profil'

  # Resources alphabetic sort as son as possible
  resources :charges

  resources :carts, except: [:destroy] do
    get 'pay/:money', action: 'pay', as: 'payment'
    get '/edit/:item_id', action: 'edit', as: 'edit'
  end

  resources :items, only: [:new, :create] do
    get 'show', action: 'show', as: 'show'
    get 'add/', action: 'add', as: 'add'
  end
end
