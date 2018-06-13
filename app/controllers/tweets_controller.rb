class TweetsController < ApplicationController
	def index
		@Title = "Listing All The Tweets";

	end
	
	def show
		if params[:id]
			#@tweet = Tweet.where(zombie: Zombie.where(name: params[:zombie]))
			@tweet = Tweet.find(params[:id])
		end
	end
	
	def new
		
	end

	def edit
		
	end
	
	def destroy

	end

	def update

	end

end
