Rails.application.routes.draw do
  resources :notes
  root to: 'home#index'
  get 'users/index'

  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
