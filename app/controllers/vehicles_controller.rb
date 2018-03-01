class VehiclesController < ApplicationController

	before_action :require_signin, except: [:index, :show]
	before_action :require_admin, except: [:index, :show]

  	def index
		@vehicles=Vehicle.price_high_to_low
	end

	def show
		@vehicles =Vehicle.find(params[:id])
	end

	def edit
		 @vehicles = Vehicle.find(params[:id])
	end

	def update
		@vehicles = Vehicle.find(params[:id])
		if @vehicles.update(vehicles_params)
			redirect_to @vehicles, notice: "Vehicle successfully updated!"
		else
			render :edit
		end
	end

	def new
		@vehicles = Vehicle.new
	end

	def create
		@vehicles=Vehicle.new(vehicles_params)
		if @vehicles.save
			redirect_to @vehicles, notice: "Vehicle successfully created!"
		else
			render :new
		end
	end

	def destroy
		@vehicles = Vehicle.find(params[:id])
		@vehicles.destroy
		redirect_to vehicles_url, alert: "Vehicle successfully deleted!"
	end

private
	def vehicles_params
		params.require(:vehicle).
			permit(:make, :model, :year, :price, :features, :mileage, :color, :image_file_name)
	end
end
