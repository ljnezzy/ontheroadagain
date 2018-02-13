module VehiclesHelper
	def format_price(vehicle)
	    if vehicle.call_for_price?
	    	content_tag(:strong, 'Call for Price')
	    else
	    	number_to_currency(vehicle.price)
	   end
	end

	def format_mileage(vehicle)
		number_with_delimiter(vehicle.mileage)
	end

	def image_for(vehicle)
		if vehicle.image_file_name.blank?
			image_tag('placeholder.png')
		else
			image_tag(vehicle.image_file_name, height: '100', width: 'auto')
		end
	end

	

end
