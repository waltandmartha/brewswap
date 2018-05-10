Rails.application.routes.draw do
 
  get 'pages/home'

  get 'pages/contact'

  resources :charges
  resources :payments
  resources :memberships
  get 'pages/index'
  # post 'profiles/index'
  # patch 'profiles/index'
  get 'home/index'
  root "home#index"
  resources :profiles
  resources :posts
  resources :drinks
  devise_for :users
  get 'profiles/edit'
  get 'profiles/show' 
  get 'profiles/new'
  # delete 'profiles/id', to: 'profiles#destroy'
  get 'posts/new'
  # get 'posts/show'
  post 'pages/contact', to: 'pages#contact_email'
  post 'profiles', to: 'profiles#profile'
  post 'posts', to: 'posts#post' 
  get '/tables', to: 'tables#all_tables' 
  get '/tables/table/:table_name', to: 'tables#table', as: 'table'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  

end
