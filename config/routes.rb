Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
        
  resources :charges, only: [:new, :create]

  get 'thanks', to: 'charges#thanks', as: 'thanks'

	 devise_for :users

	get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

	resources :products

	

  get 'page_1', to: 'pages#page_1'

  get 'page_2', to: 'pages#page_2'  

    root 'pages#home'
    

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
