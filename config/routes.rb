Rails.application.routes.draw do
	#root 'tweets#index'
	get '/' => 'tweets#index' #set root

	get '/tweets' => 'tweets#index'
	resource :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
