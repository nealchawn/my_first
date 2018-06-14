class TweetsController < ApplicationController
	before_action :assign_tweet, only: [:show, :edit, :destroy]
	before_action :check_auth, only: [:show, :edit, :destroy]
	
	def index
		@title = "Listing All The Tweets";

	end
	
	def show
		respond_to do |format|
			format.html
			format.json {render json: @tweet}
		end
	end
	
	def new
		
	end

	def edit
	end
	
	def destroy
		# find record
		# destroy record
		# redirect
	end

	def update
		# find record
		# update record
		# redirect
	end

	def check_auth
		if @tweet.zombie_id != session[:zombie_id]
			#flash[:notice] = "Sorry, this is not your tweet"
			redirect_to(root_path , notice: "Sorry, this isn't your Tweet to edit!")
		end
	end

	def assign_tweet
		@tweet = Tweet.find(params[:id])
	end
end
