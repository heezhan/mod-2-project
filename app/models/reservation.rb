class Reservation < ApplicationRecord
    belongs_to :restaurant
    belongs_to :user

    def self.total_reservations
        self.all.count
    end 
end
