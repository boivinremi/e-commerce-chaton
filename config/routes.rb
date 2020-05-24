Rails.application.routes.draw do

  devise_for :users

  root 'home#home'
  get '/profil', to: 'static_pages#profil'

  # Resources alphabetic sort as son as possible

  resources :carts, except: [:destroy] do
    get 'pay/:money', action: 'pay', as: 'payment'
    get '/edit/:item_id', action: 'edit', as: 'edit'
  end

  resources :charges

  resources :dashboard
  
  resources :items, only: [:new, :create] do
    get 'show', action: 'show', as: 'show'
    get 'add/', action: 'add', as: 'add'
  end
end
