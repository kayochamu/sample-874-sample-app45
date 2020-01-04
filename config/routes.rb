Rails.application.routes.draw do
  
  
 
  get 'tasks/delete'

  get 'tasks/update'

  get 'tasks/index',to: 'tasks#index'

  get '/tasks/new',to: 'tasks#new'
  get '/tasks/create' ,to: 'tasks#create'
  get '/tasks/new',to: 'tasks#new'
  post'/tasks/create', to: 'tasks#create'
  root 'static_pages#top'
  get '/users/:id', to: 'tasks#new'
  
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
   
  
  resources :users
end


