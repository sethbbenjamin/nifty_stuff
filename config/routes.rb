Rails.application.routes.draw do
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  root 'posts#index'

  resources :posts
end
