ShimellMadden::Application.routes.draw do

  # admin  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # static pages and news
  root "items#homepage"
  get '/about', to: 'pages#about'
  get '/comissioning', to: 'pages#comissioning'
  get '/contact', to: 'pages#contact'
  resources :blogs, :path => "news"

  # homepage (all items)
  get '/items', to: 'items#index'

  # projects, collections
  type_regexp = Regexp.new([:projects, :collections, :archives].join("|"))
  resources :groups, path: ':type', constraints: { type: type_regexp }

  # archive
  get '/archive', to: 'groups#archive'
  get '/archive/:id', to: 'groups#archiveshow'

  # shop
  get '/shop/', to: 'pages#shop'

end