class BookingsController < ApplicationController
    before_action :set_booking, only: [:new, :create, :destroy]
    before_action :find_party_flat, only: [:new, :create]

    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(booking_params)
    end

    def destroy
        @booking.destroy
        redirect_to party_flat_path(@booking)
    end

    private

    def booking_params
        params.require(:booking).permit(:start_date, :end_date, :id_partys, :id_users)
    end

    def set_booking
        @booking = Booking.find(params[:id])
    end

    def find_party_flat
        @party_flat = Party_flat.find(params[:id])
    end

end
