Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :customers, controllers:{
    sessions: 'devise/customers/sessions',
    passwords: 'devise/customers/passwords',
    registrations: 'devise/customers/registrations',
  }

  devise_for :admins,
  path: "admin",
  controllers:{
    sessions: 'devise/admins/sessions'
  }

  namespace :public do
    resources :items
    resources :customers
    resources :cart_items
    resources :orders
    resources :addresses
  end

  namespace :admin do
    get 'top/top'
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers
    resources :orders
    patch 'order_details/update'
  end

end
