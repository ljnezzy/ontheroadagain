class VehiclesController < ApplicationController
	def index
		@vehicles=Vehicle.all
	end

	def show
		@vehicles =Vehicle.find(params[:id])
	end

	def edit
		 @vehicles = Vehicle.find(params[:id])
	end

	def update
		@vehicles = Vehicle.find(params[:id])
		@vehicles.update(vehicles_params)
		redirect_to @vehicles		
	end

	def new
		@vehicles = Vehicle.new
	end

	def create
		@vehicles=Vehicle.new(vehicles_params)
		@vehicles.save
		redirect_to @vehicles		
	end

	def destroy
		@vehicles = Vehicle.find(params[:id])
		@vehicles.destroy
		redirect_to vehicles_url
		
	end

private
	def vehicles_params
		params.require(:vehicle).
			permit(:make, :model, :year, :price, :features)
	end
end
