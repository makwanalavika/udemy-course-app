Rails.application.routes.draw do
  root 'pages#home'
  mount ActionCable.server ,at: '/cable'

  resources :articles
  resources :users
  resources :messages
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'new', to: 'sessions#new'
  post 'create', to: 'sessions#create'
  delete 'destroy', to: 'sessions#destroy'
  get 'chat_index', to: 'chatrooms#chat_index'
  post 'chat_message', to: 'messages#create'
end
