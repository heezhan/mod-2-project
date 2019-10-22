class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :restaurants, through: :reviews
    has_many :restaurants, through: :reservations

    validates :first_name, presence: true #capitalization
    validates :last_name, presence: true #capitalization
    validates :birthdate, presence: true #today's year is the limit
    validates :phone_number, presence: true #just numbers, no characters
    validates :email, presence: true #all lowercase, check for a @ symbol

    def display_name
        return self.username.capitalize
    end 

end
