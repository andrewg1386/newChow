Rails.application.routes.draw do
  get 'sessions/index'

  get '/' => "clients#index"

  get 'clients/log_reg' => 'clients#log_reg'

  get 'clients/:id/edit' => "clients#edit"

  get 'clients/new' => "clients#new"
<<<<<<< HEAD

  post "clients" => "clients#create"

  get 'clients/delete' => "clients#destroy"

  get 'clients/:id' => "clients#show"
=======
  get 'clients/delete' => "cliens#destroy"
>>>>>>> a1a153c7bf129cc7cadf8acd0b3c6fe645bc1bef

  post "/clients" => "clients#create"
  post "/sessions" => "sessions#home"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
