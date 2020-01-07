Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :articles
  get 'signup' => 'users#new'
  resources :users
  get 'new' => 'sessions#new'
  post 'create' => 'sessions#create'
  delete 'destroy' => 'sessions#destroy'
end
