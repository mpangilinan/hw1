Rails.application.routes.draw do
  #get '/about', to: 'CONTROLLER#FUNCTION'
  #get '/user/new', to: 'CONTROLLER#FUNCTION', as: 'users'

  #resources :users
  #root 'users#index'
  get '/users', to: 'users#index'
  get '/about', to: 'users#about'
  get '/user/new', to: 'users#new'


  #Edit above this line
  get '/user/:id', to: 'users#show', as: 'user'
  post '/user/new', to: 'users#create'
end
