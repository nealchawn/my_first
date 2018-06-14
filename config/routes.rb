Rails.application.routes.draw do
	root 'tweets#index'
	# get '/' => 'tweets#index' #set root'

	
	#get '/zombies/:name' =>'zombies#show', as: 'zombiey_path'
	resources :tweets

	get '/all' => redirect('/tweets')

	get '/zombies/:name' =>'zombies#show', as: 'zombie'
	resources :zombies, except: [:show] do

	end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
