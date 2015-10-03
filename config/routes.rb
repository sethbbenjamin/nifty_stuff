Rails.application.routes.draw do
  get 'users/index'

  #devise_for :users
  devise_for :users, path: "account", path_names: { sign_in: 'login', sign_out: 'logout',
                                               password: 'password',
                                               confirmation: 'verification',
                                               unlock: 'unlock',
                                               registration: 'register',
                                               sign_up: 'signup' }


  root to: 'posts#index'

  resources :posts
  resources :users
end
