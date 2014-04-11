Store::Application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'

  root :to => 'welcome#index'
  get "sessions/new"
  resources :admins
  resources :sessions
end

