Rails.application.routes.draw do
  root 'alpha#home'
  get 'about', to: 'alpha#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
