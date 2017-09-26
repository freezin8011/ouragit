Rails.application.routes.draw do
  
  root 'home#lending'
  
  devise_for :users
  
  
  get 'mail/new'

  post 'mail/create'
  
  get 'home/lending'

  get 'home/list'
  
  get 'home/new'

  post 'home/create'
  
  get 'info/:id' => 'home#info'

  get 'home/update'

  get 'home/mail'
  
  post 'reply/reply_write'
  
  # update
  get 'update_view/:id' => 'home#update_view'
  post 'real_update/:id' => 'home#real'

  # 삭제기능
  get 'destroy/:id' => 'home#destroy'
  
   # 댓글update
  get 'reply_update_view/:id' => 'reply#reply_update_view'
  post 'reply_real_update/:id' => 'reply#reply_real'
  
  # 댓글_삭제기능
  get 'reply_destroy/:id' => 'reply#reply_destroy'

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
