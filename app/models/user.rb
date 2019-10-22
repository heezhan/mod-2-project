class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :reservations
    has_many :restaurants, through: :reviews
    has_many :restaurants, through: :reservations

    validates :first_name, presence: true #capitalization
    validates :last_name, presence: true #capitalization
    validates :birthdate, presence: true #today's year is the limit
    validates :phone_number, presence: true #just numbers, no characters
    validates :email, presence: true #all lowercase, check for a @ symbol

    validates :username, uniqueness: true

    def display_name
        return self.username.capitalize
    end 

    def favorite_restaurants #the restaurant the user has rated highest
        highest_rated = 0
        favorite_restaurant = nil
        self.reviews.each do |review|
            if review.stars > highest_rated
                highest_rated = review.stars 
                favorite_restaurant = review.restaurant.name
            end 
        end 
        return favorite_restaurant
    end

    def least_favorite_restaurants
        lowest_rated = 6
        least_favorite_restaurant = nil
        self.reviews.each do |review|
            if review.stars < lowest_rated
                lowest_rated = review.stars 
                least_favorite_restaurant = review.restaurant.name
            end 
        end 
        return least_favorite_restaurant
    end

    def longest_review
        longest_length = 0
        longest_review = nil
        self.reviews.each do |review|
            if review.content.length > longest_length
                longest_length = review.content.length
                longest_review = review
            end 
        return "#{longest_review.restaurant.name}, #{longest_review.content}"
        end 
    end
    
    # def upcoming_reservations
    #     self.reservations.date 
    #     Date.today.strftime
    # end
end
