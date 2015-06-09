Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  resources :events, only: [:new, :create, :show]
  resources :invitations, only: [:create]
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
end
