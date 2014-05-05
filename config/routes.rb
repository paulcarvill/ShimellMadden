ShimellMadden::Application.routes.draw do
  
  root "pages#index"

  resources :projects

  resources :collections

  resources :items

end
