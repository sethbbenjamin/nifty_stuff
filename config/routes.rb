Rails.application.routes.draw do
  devise_for :users
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  root to: 'posts#index'

  resources :posts
end
