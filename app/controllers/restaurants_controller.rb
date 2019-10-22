class RestaurantsController < ApplicationController
    before_action :authorized
    # def index
    #     if current_user
    #         @restaurants = Restaurant.all 
    #         render :index
    #     else 
    #         redirect_to login_path
    #     end 
    # end 

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
