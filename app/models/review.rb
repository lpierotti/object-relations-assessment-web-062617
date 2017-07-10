class Review

	attr_accessor :customer, :restaurant, :content
	
	@@all = []


	def initialize(restaurant, customer, content)
		@restaurant = restaurant
		@customer = customer
		@content = content
		@@all << self
	end

	def self.all
		@@all
	end

end

