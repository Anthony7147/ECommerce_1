Rails.application.routes.draw do

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
