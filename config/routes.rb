ShimellMadden::Application.routes.draw do

  


  # static pages and news
  root "items#homepage"
  get '/about', to: 'pages#about'
  get '/commissioning', to: 'pages#commissioning'
  get '/contact', to: 'pages#contact'
  get '/stockists', to: 'pages#stockists'
  resources :blogs, :path => "news"

  # homepage (all items)
  get '/items', to: 'items#index'

  # projects, collections
  # the regex here describes the different 'types' that a group can be
  type_regexp = Regexp.new([:projects, :collections].join("|"))
  resources :groups, path: ':type', constraints: { type: type_regexp }

  # archive
  get '/archive', to: 'groups#archive'
  get '/archive/:id', to: 'groups#archiveshow'

  # shop
  get '/shop/', to: 'pages#shop'

  # admin  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
end