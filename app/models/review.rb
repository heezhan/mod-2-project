class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    def self.most_recent_review
        @review = Review.order('created_at DESC').first
    end
end
