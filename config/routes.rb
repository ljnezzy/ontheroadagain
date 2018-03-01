Rails.application.routes.draw do
	
  
	root 'vehicles#index'

	resources :vehicles do
		resources :reviews
	end
	#resources :vehicles

	#get 'vehicles' => 'vehicles#index'
	#get 'vehicles/:id' => 'vehicles#show', as: "vehicle"
	get 'signup' => 'users#new'
	resources :users
	#resources :reviews
	resource :session	
	get "signin" => "sessions#new"
end
