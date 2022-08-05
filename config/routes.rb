Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :stories
  resources :users, only: %i[ new create show] 
  resources :sessions, only: %i[ new create destroy] 

  root 'stories#index'
end
