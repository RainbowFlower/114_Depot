DepotB::Application.routes.draw do

  resources :ccategories

  resources :pcategories

  resources :search
  #get "search/index" 
  
  get "customer" => 'customer#index'
  
  get "register" => 'users#register'

  resources :helps

  get 'admin' => 'admin#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

scope '(:locale)' do
  resources :comments do
    get :one, :on => :member
  end
  
  resources :users

  resources :orders do
    get :ship, :on => :member
  end

  resources :line_items do
    post :quantity, :on => :member
  end

  resources :carts


  resources :products do
    resources :comments
    get :who_bought, :on => :member
  end
  
  #User Management
  match 'helps/helpregister' => 'helps#helpregister'
  match 'helps/helplogin' => 'helps#helplogin'
  #Find product
  match 'helps/helpsearchbykeyword' => 'helps#helpsearchbykeyword'
  match 'helps/helpsearchbytype' => 'helps#helpsearchbytype'
  #Cart
  match 'helps/helpaddtocart' => 'helps#helpaddtocart'
  match 'helps/helpdeletefromcart' => 'helps#helpdeletefromcart'
  match 'helps/helpclearcart' => 'helps#helpclearcart'
  #Order Management
  match 'helps/helpcheckout' => 'helps#helpcheckout'
  match 'helps/helpvieworder' => 'helps#helpvieworder'
  match 'helps/helpchangeorder' => 'helps#helpchangeorder'
  match 'helps/helpdeleteorder' => 'helps#helpdeleteorder'
  #Comment Management
  match 'helps/helpcreatecomment' => 'helps#helpcreatecomment'
  match 'helps/helpviewcomment' => 'helps#helpviewcomment'
  #Internationalization
  match 'helps/helpchangelanguage' => 'helps#helpchangelanguage'

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
  # root :to => "welcome#index"
  root :to => 'store#index', :as => 'store'
end
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end