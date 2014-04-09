KicksAreSick::Application.routes.draw do
  get 'contact_us',   to: 'contact#index', as:'contact'
  get "about/index"
  get "about/show"
  get "about/new"
  get "about/edit"
  get "about/update"
  get "about/create"
  get "about/destroy"
  get "about_us/index"
  get "about_us/show"
  get "about_us/new"
  get "about_us/create"
  get "about_us/edit"
  get "about_us/update"
  get "about_us/destroy"
  get  'about',         to: 'about#index',     as: 'about'
  get  'product',       to: 'admin/products#index',      as: 'contact_us'
  get "line_items/index"
  get "line_items/show"
  get "line_items/new"
  get "line_items/edit"
  get "line_items/create"
  get "line_items/update"
  get "line_items/destroy"
  get "orders/index"
  get "orders/show"
  get "orders/new"
  get "orders/edit"
  get "orders/create"
  get "orders/update"
  get "orders/destroy"
  get "customer/index"
  get "customer/new"
  get "customer/show"
  get "customer/edit"
  get "customer/update"
  get "customer/destroy"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "brand/index"
  get "brand/show"
  get "brand/new"
  get "brand/create"
  get "brand/edit"
  get "brand/destroy"
  get "category/index"
  get "category/show"
  get "category/new"
  get "category/create"
  get "category/edit"
  get "category/destroy"
  resources :products

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
