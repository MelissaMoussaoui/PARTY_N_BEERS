class BookingsController < ApplicationController
    before_action :set_booking, only: [:destroy]
    before_action :find_party_flat, only: [:new, :create]
    before_action :authenticate_user!

    def new
        @booking = Booking.new
        authorize @booking
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.party_flat = @party_flat
        authorize @booking
        @booking.save
        redirect_to party_flat_path(party_flat)
    end

    def destroy
        @booking.destroy
        redirect_to party_flat_path(@booking)
    end

    private

    def booking_params
        params.require(:booking).permit(:start_date, :end_date, :party_flat_id, :user_id)
    end

    def set_booking
        @booking = Booking.find(params[:id])
    end

    def find_party_flat
        @party_flat = PartyFlat.find(params[:party_flat_id])
    end

end
