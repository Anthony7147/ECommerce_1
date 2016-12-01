Rails.application.routes.draw do
	
  get 'page_1', to: 'pages#page_1'

  get 'page_2', to: 'pages#page_2'  

    root 'pages#home'
    

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
