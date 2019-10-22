class ReservationsController < ApplicationController

    before_action :find_reservation, only: [:show, :edit, :update, :destroy]

    def index
        @reservations = Reservation.all
    end

    def show
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.user = current_user
        @reservation.save
        if @reservation.save
            redirect_to reservation_path(@reservation)
        else
            render :new
        end 
    end

    def edit
    end

    def update
        @reservation.update(reservation_params)
        if @reservation.save
            redirect_to reservation_path(@reservation)
        else
            render :edit
        end 
    end

    def destroy
        @reservation.destroy
        redirect_to home_path
    end

    private

    def find_reservation
        @reservation = Reservation.find(params[:id])
    end

    def reservation_params
        params.require(:reservation).permit(:date, :time, :guests, :restaurant_id, :user_id)
    end

end

