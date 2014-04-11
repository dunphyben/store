Store::Application.routes.draw do
  root :to => 'admins#index'
  get "sessions/new"
  resources :admins
  resources :sessions
end
