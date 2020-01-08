Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'
  resources :articles
  get 'signup' => 'users#new'
  resources :users
  get 'new' => 'sessions#new'
  post 'create' => 'sessions#create'
  delete 'destroy' => 'sessions#destroy'
  get 'chat_index' => 'chatrooms#chat_index'
  resources :messages
  post 'chat_message' => 'messages#create'
end
