Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :articles
  get 'signup' => 'users#new'
  resources :users
  # resources :users
end
