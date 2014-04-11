Store::Application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'

  root :to => 'sessions#new'
  get "sessions/new"
  resources :admins
  resources :sessions
end
