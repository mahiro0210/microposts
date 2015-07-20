Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
#  get    'edit'    => 'users#edit'
#  patch  'users'   => 'users#update'

  resources :users, only: [:show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
end
