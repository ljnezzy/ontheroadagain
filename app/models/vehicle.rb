class Vehicle < ApplicationRecord
	def self.price_high_to_low
  	 order(price: :desc) 	
  	end
	
	def call_for_price?
    	price.blank? || price < 5000
  	end


end
