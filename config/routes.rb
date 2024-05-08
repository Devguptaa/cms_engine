CmsRails::Engine.routes.draw do
  resources :contents
  resources :pages
  resources :themes
  resources :templates
  resources :categories
  devise_for :users, class_name: "CmsRails::User"
end
