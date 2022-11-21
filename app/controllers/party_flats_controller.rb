class PartyFlatsController < ApplicationController
    before_action :set_party_flat, only: [:show, :edit, :update, :destroy]

    def index
        @party_flats = Party_flat.all
    end

    def new
        @party_flat = Party_flat.new
    end

    def create
        @party_flat = Party_flat.new(party_flat_params)
        if @party_flat.save
            redirect_to party_flats_path
        else 
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @party_flat = Party_flat.find(params[:id])
    end

    def edit
    end

    def update
        if @party_flat.update(party_flat_params)
            redirect_to party_flat_path(@party_flat)
        else 
            render :new, status: :unprocessable_entity
        end
    end

    def destroy 
        @party_flat.destroy
        redirect_to party_flats_path, status: :see_other
    end

    private

    def party_flat_params
        params.require(:party_flat).permit(:localisation, :people_capacity, :description, :bed_capacity, :number_of_room, :picture_url, :agrement_list, :id_users)
    end

    def set_party_flat
        @party_flat = Party_flat.find(params[:id])
    end
end
