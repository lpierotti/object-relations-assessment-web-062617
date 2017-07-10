# Please copy/paste all three classes into this file to submit your solution!

class Restaurant
  
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	@@all.find do |restaurant|
  		restaurant.name = name
  	end
  end

  def reviews
  	Review.all.select do |review|
  		review.restaurant == self
  	end
  end

  def customers
  	self.reviews.map do |review|
  		review.customer
  	end.uniq
  end

end



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




class Customer
  
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	@@all.find do |customer|
  		customer.full_name == name
  	end
  end

  def self.find_all_by_first_name(name)
  	@@all.find_all do |customer|
  		customer.first_name == name
  	end
  end

  def self.all_names
  	@@all.map do |customer|
  		customer.full_name
  	end
  end

  def add_review(restaurant, content)
  	review = Review.new(content)
  	review.restaurant = restaurant
  	review.customer = self
  	review
  end

end



