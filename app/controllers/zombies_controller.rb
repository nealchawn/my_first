class ZombiesController < ApplicationController
	def show
		@zombie = Zombie.where(name: params[:name]).first

		respond_to do |format|
			format.html
			format.json {render json: @zomnbie}
		end
	end
end
