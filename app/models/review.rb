class Review

	attr_accessor :customer, :restaurant, :content
	
	@@all = []


	def initialize(content)
		@content = content
		@@all << self
	end

	def self.all
		@@all
	end

end

