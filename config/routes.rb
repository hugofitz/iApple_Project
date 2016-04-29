Rails.application.routes.draw do
 
  resources :orderitems

  resources :orders do 
  resources :orderitems
  end
  devise_for :admins
  devise_for :users do
    resources :orders
   
end
get 'items/category/:id' => 'items#category'
get '/checkout' => 'cart#createOrder'
  get 'site/home'

  get 'site/about'

  get 'site/services'

  get 'site/contact'

get 'cart/index'
get 'site/about' => 'site#about'
get 'site/contact' => 'site#contact'
get 'site/home' => 'site#home'

  get '/cart' => 'cart#index' 

get '/cart/:id' => 'cart#add'


get'/cart/remove/:id' => 'cart#remove'
get '/clear' => 'cart#clear'
  resources :items
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root 'site#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end





