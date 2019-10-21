class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new[params]
    end

    def edit
        
    end

    def update

    end

    def destroy
        @user.destroy
        redirect_to :index
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :birthday, :phone_number)
    end

end
