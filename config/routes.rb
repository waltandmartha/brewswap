Rails.application.routes.draw do
 
  get 'pages/home'

  get 'pages/contact'

  resources :charges
  resources :payments
  resources :memberships
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
  get 'posts/new'
  post 'pages/contact', to: 'pages#contact_email'
  post 'posts', to: 'posts#post' 
  get '/tables', to: 'tables#all_tables' 
  get '/tables/table/:table_name', to: 'tables#table', as: 'table'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  

end
