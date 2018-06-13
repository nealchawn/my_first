Rails.application.routes.draw do
	#root 'tweets#index'
	get '/' => 'tweets#index' #set root'

	get '/tweets' => 'tweets#index'
	get '/zombies' => 'zombies#index'
	get '/zombies/:name' =>'zombies#show', as: 'zombie'
	get '/tweets/:id' =>'tweets#show', as: 'tweet'
	#get '/zombies/:name' =>'zombies#show', as: 'zombiey_path'
	resource :tweets
	resource :zombies



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
