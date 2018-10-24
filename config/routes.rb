Rails.application.routes.draw do
  resources :likes, only: [:create, :destroy]
  resources :destinations, only: [:show]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  root 'welcome#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
