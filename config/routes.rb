Rails.application.routes.draw do
  resources :likes
  resources :destinations, only: [:show]
  resources :users

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
