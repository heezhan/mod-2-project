class Restaurant < ApplicationRecord
    belongs_to :location
    has_many :reviews
    has_many :reservations 
    has_many :users, through: :reviews
    has_many :users, through: :reservations

    def self.search(search)
        if search
            restaurant = self.find_by(category: search)
            if restaurant 
                self.where(category: restaurant.category)
            else 
                self.all 
            end 
        else 
            self.all 
        end 
    end 

    def self.highest_rated
        highest_rating = 0
        highest_rated_restaurant = nil
        Restaurant.all.each do |restaurant|
            if restaurant.average_rating > highest_rating
                highest_rating = restaurant.rating
                highest_rated_restaurant = restaurant.name
            end
        end
        highest_rated_restaurant
    end

    def self.lowest_rated
        lowest_rating = 5
        lowest_rated_restaurant = nil
        Restaurant.all.each do |restaurant|
            if restaurant.average_rating > lowest_rating
                lowest_rating = restaurant.rating
                lowest_rated_restaurant = restaurant.name
            end
        end
        lowest_rated_restaurant
    end

    def most_expensive
        Restaurant.all.select {|restaurant| restaurant.price == 3}
    end

    def cheapest_restaurants
        Restaurant.all.select {|restaurant| restaurant.price == 1}
    end

    def average_rating
        ratings = self.reviews.map {|review| review.rating}
        ratings.sum / ratings.length
    end

    def highest_rating_by_category(category)

    end

    def lowest_rating_by_category(category)

    end

    def self.most_popular

    end

    def restaurants_by_category(category)
        Restaurant.find_all {|restaurant| restaurant.category == category}
    end

    def longest_review
        longest_review
        self.reviews.each do |review|
            if review.content.length
            end
        end
    end

end
