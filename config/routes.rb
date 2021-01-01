Rails.application.routes.draw do
  resources :categories do
    resources :notes
  end


  #resources :notes
  root to: 'home#index'
  get 'users/index'

  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
