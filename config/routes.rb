KicksAreSick::Application.routes.draw do
  get "provinces/index"
  get "provinces/show"
  get "provinces/new"
  get "provinces/create"
  get "sale_status/index"
  get "sale_status/create"
  get "sale_status/show"
  get  'homepage',          to: 'homepage#index',                 as: 'index'
  get  'contact_us',        to: 'contact#index',                  as: 'contact_us'
  get  'about_us',          to: 'about#index',                    as: 'about_us'
  get  'product',           to: 'products#index',                 as: 'products'
  get  'categories',        to: 'category#index',                 as: 'categories'
  get  'shoes',             to: 'products#shoes_category',        as: 'shoes'
  get  'accessories',       to: 'products#acc_category',          as: 'accessories'
  get  'equipments',        to: 'products#equip_category',        as: 'equipments'
  get  'search_results',    to: 'products#search_results',        as: 'search_results'
  root :to => "homepage#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resources :category, only: [:index, :show ]

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
