class AddMoreFieldsToVehicles < ActiveRecord::Migration[5.1]
	def change
		add_column :vehicles, :mileage, :integer
		add_column :vehicles, :color, :string
		add_column :vehicles, :image_file_name, :string, default: "" 
	end
end
