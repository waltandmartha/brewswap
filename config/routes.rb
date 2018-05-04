Rails.application.routes.draw do
  resources :drinks
  get 'home/index'
  root "home#index"
  resources :profiles
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  

end
