Rails.application.routes.draw do
  devise_for :users
  root 'languages#index'
  resources :users
  resources :languages
  resources :snippets
end