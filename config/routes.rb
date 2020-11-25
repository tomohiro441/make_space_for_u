Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: 'messages#index'
  resources :spaces
end
