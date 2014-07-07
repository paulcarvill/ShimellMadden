ShimellMadden::Application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :blogs, :path => "news"

  root "items#index"

  get '/about', to: 'pages#about'

  get '/comissioning', to: 'pages#comissioning'
 
  get '/contact', to: 'pages#contact'

  resources :projects

  resources :collections

  resources :items

  get '/archive', to: 'items#archive'
  get '/archive/:id', to: 'items#archiveshow'
  get '/shop/', to: 'pages#shop'


end