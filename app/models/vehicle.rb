class Vehicle < ApplicationRecord
	validates :make, :model, :year, :color, presence: true

	validates :features, length: { minimum: 25 }

	validates :price, :mileage, numericality: { greater_than_or_equal_to: 0}

	validates :image_file_name, allow_blank: true, format: { with: /\w+\.(gif|jpg|png)\z/i,	message: "must reference a GIF, JPG, or PNG image"
	}

	has_many :reviews, dependent: :destroy	

	def self.price_high_to_low
  	 order(price: :desc) 	
  	end
	
	def call_for_price?
    	price.blank? || price < 5000
  	end

  	def average_stars
  	  reviews.average(:stars)
  	end

end
