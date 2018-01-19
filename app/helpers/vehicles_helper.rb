module VehiclesHelper
	def format_price(vehicle)
	    if vehicle.call_for_price?
	     content_tag(:strong, 'Call for Price')
	    else
	     number_to_currency(vehicle.price)
	   end
	end
end
