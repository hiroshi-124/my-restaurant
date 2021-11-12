Rails.application.routes.draw do
  devise_for :admins, controllers: {
   sessions: "admins/sessions"
  }

  devise_scope :admin do
    get "dashboard", to: "dashboard#index"
    get "dashboard/login", to: "admins/sessions#new"
    post "dashboard/login", to: "admins/sessions#create"
    delete "dashboard/logout", to: "admins/sessions#destroy"
  end
  namespace :dashboard do
    resources :posts
    resources :menus, except: [:show]
  end
  
  root to: "home#index"
  resources :posts, only: %i[index show]
  resources :contacts, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
