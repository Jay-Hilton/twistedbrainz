TwistedBrainz::Application.routes.draw do


  devise_for :users
  # Change the routes
  devise_scope :user do
    get 'register', to: 'devise/registrations#new', as: :register
    get 'login', to: 'devise/sessions#new', as: :login
    get 'edit', to: 'devise/registrations#edit'
    get 'logout', to: 'devise/sessions#destroy', as: :logout
  end

  resources :statuses
  get 'feed', to: 'statuses#index', as: :feed

  resources :site
    get 'start', to: 'site#index'
    get 'home', to: 'site#home'
    get 'about', to: 'site#about'
    get 'video', to: 'site#video'
    # get 'downloads', to: 'site#downloads'

  # The default site
  root to: 'site#index'

  # Get The Sites
  get "site/index"
  get "site/about"
  get "site/video"
  # get "site/downloads"
  get "profiles/show"
  
  get '/:id', to: 'profiles#show', as: 'profile'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'site#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
