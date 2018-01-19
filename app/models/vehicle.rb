class Vehicle < ApplicationRecord
	def call_for_price?
    price.blank? || price < 5000
  end
end
