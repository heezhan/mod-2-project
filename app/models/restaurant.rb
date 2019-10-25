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

    def self.most_stars
        most_stars = 0
        most_stars_restaurant = nil
        Restaurant.all.each do |restaurant|
            if restaurant.average_stars > most_stars
                most_stars = restaurant.average_stars
                most_stars_restaurant = restaurant
            end
        end
        most_stars_restaurant
    end

    def self.lowest_stars
        lowest_rating = 5
        lowest_rated_restaurant = nil
        Restaurant.all.each do |restaurant|
            if restaurant.average_stars > lowest_rating
                lowest_rating = restaurant.average_stars
                lowest_rated_restaurant = restaurant.name
            end
        end
        lowest_rated_restaurant
    end

    def self.most_expensive
        array = Restaurant.all.select {|restaurant| restaurant.price == "$$$"}
    end

    def self.cheapest_restaurants
        Restaurant.all.select {|restaurant| restaurant.price == "$"}
    end

    def average_stars
        stars = self.reviews.map {|review| review.stars}
        if stars.length == 0
            0
        else
            stars.sum / stars.length
        end
    end

    def self.find_restaurant_by_category(category) 
        Restaurant.select{|restaurant| restaurant.category = category}
    end

    def self.highest_rated_by_category(category) 
        array = find_restaurant_by_category(category).select{|restaurant| restaurant.average_stars > 4}
        array.map do |restaurant|
            return restaurant.name 
        end
    end

    def self.lowest_rating_by_category(category) 
        find_restaurant_by_category(category).select{|restaurant| restaurant.average_stars < 2}
    end 

    def self.most_popular 
        num_of_reviews = 0
        most_popular_restaurant = nil
        Restaurant.all.each do |restaurant|
            if restaurant.reviews.length > num_of_reviews
                num_of_reviews = restaurant.reviews.length
                most_popular_restaurant = restaurant
            end
        end
        most_popular_restaurant.name
    end

    def self.restaurants_by_category(category) 
        Restaurant.select {|restaurant| restaurant.category == category}
    end

    def self.longest_review 
        longest_review_count = 0
        longest_review = nil
        Restaurant.all.each do |restaurant|
            restaurant.reviews.each do |review|
                if review.content.length > longest_review_count
                    longest_review_count = review.content.length
                    longest_review = review
                end
            end
        end
        longest_review.content
    end

end
