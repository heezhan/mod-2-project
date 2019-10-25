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

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def favorite_restaurants
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

    def self.longest_review
        longest_length = 0
        longest_review = nil
        self.all.each do |user|
            user.reviews.each do |review|
                if review.content.length > longest_length
                longest_length = review.content.length
                longest_review = review
                end 
            end 
        end 
    return "#{longest_review.restaurant.name}, #{longest_review.content}"
  end 
  

    def self.most_reviews
        most_reviews = 0
        prolific_user = nil
        self.all.each do |user|
            if user.reviews.length > most_reviews
                most_reviews = user.reviews.length
                prolific_user = user
            end
        end
        prolific_user
    end
    
    # def upcoming_reservations
    #     self.reservations.date 
    #     Date.today.strftime
    # end
end
