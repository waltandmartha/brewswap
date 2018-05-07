Rails.application.routes.draw do
 

  get 'pages/index'
  # post 'profiles/index'
  # patch 'profiles/index'
  resources :drinks
  get 'home/index'
  root "home#index"
  resources :profiles
  resources :posts
  devise_for :users
  get 'profiles/edit'
  get 'profiles/show'

  get '/tables', to: 'tables#all_tables' 
  get '/tables/table/:table_name', to: 'tables#table', as: 'table'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  

end
