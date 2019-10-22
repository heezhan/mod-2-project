class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all 
    end 

    def show
        @restaurant = Restaurant.find(params[:id])
    end 

    def create

    end 

    def new

    end 

    def edit

    end 

    def update
        
    end 
end
