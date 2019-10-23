class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.all
    end 

    def show

    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.save
        redirect_to review_path(@review)
    end

    def edit
    end

    def update
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def delete
    end

    private

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :stars, :user_id, :restaurant_id)
    end
end
