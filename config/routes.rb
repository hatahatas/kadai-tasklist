Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'
  
  root to: 'tasks#index'
    
  get 'signup' , to: 'users#new'
  resources :users, only:[:index, :show, :new, :create]
  resources :tasks
    
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
