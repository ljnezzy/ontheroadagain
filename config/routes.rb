Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'vehicles#index'


	resources :vehicles

	#get 'vehicles' => 'vehicles#index'
	#get 'vehicles/:id' => 'vehicles#show', as: "vehicle"
end
