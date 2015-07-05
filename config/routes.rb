Rails.application.routes.draw do
  resources :det_pedidos

  resources :det_compras

  resources :compras

  resources :pedidos

  resources :categoria

  resources :proveedors

  resources :venta

  resources :clientes

  devise_for :users
  resources :productos
  
  get 'home/almacen'

  get 'home/caja'

  get 'home/contacto'

  get 'home/galeria'

  get 'home/index'

  get 'home/reportes'

  get 'home/servicios'

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
  
  root :to => 'home#index'
  #match "/registro"=> "registro#index", :as => :registro
  #match "/inicio"=> "home#index", :as => :inicio
  #match "/caja"=> "home#caja", :as => :caja
  #match "/almacen"=> "home#almacen", :as => :almacen
  #match "/reportes"=> "home#reportes", :as => :reportes
  #match "/servicios"=> "home#servicios", :as => :servicios
  #match "/galeria"=> "home#galeria", :as => :galeria
  #match "/contacto"=> "home#contacto", :as => :contacto
  #match "/login"=> "registro#login", :as => :login
  #match "/logout"=> "registro#logout", :as => :logout

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
