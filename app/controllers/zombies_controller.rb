class ZombiesController < ApplicationController
	def show
		if params[:name]
			@zombie = Zombie.where(name: params[:name]).first
		end
		
	end
end
