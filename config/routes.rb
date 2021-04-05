Rails.application.routes.draw do
  root 'alpha#home'
  get 'about', to: 'alpha#about'
  resources :articles, only: [:show, :index]
end
