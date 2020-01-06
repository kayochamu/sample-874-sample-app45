Rails.application.routes.draw do
 
 
 #get 'tasks/new', to: 'tasks#new'
 #get 'tasks/edit', to:'tasks#edit'
 #get 'tasks/show', to:'tasks#show'
#get 'tasks/index', to:'tasks#index'
#post 'tasks/create', to:'tasks#create'
 
 
 
  root 'static_pages#top'
  
  
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
   
  
  
    resources :users do
    member do
    end
    resources :tasks
  end
end
  
  
  



 