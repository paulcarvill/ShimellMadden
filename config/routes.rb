ShimellMadden::Application.routes.draw do
  
  root "pages#index"

  get '/about', to: 'pages#about'
  get '/comissioning', to: 'pages#comissioning'
  get '/news', to: 'pages#news'
  get '/contact', to: 'pages#contact'

  resources :projects

  resources :collections

  resources :items

  get '/archive', to: 'items#archive'
  get '/archive/:id', to: 'items#show'


end