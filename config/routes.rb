Rails.application.routes.draw do


  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  

  get 'users/new'
  


  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'toppages#index'
    
    get 'signup' , to: 'users#new'
    resources :users, only:[:index, :show, :new, :create]
    resources:tasks
    
   
    
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  put 'tasks/:id', to: 'tasks#update'
  put 'tasks/:id',to: 'tasks#edit'

end
