class PartyFlatsController < ApplicationController
  before_action :set_party_flat, only: [:show, :edit, :update, :destroy]

  def index
    @party_flats = policy_scope(PartyFlat)
    @markers = @party_flats.geocoded.map do |party_flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
        info_window: render_to_string(partial: "info_window", locals: {party_flat: party_flat})
      }
  end

  def new
    @party_flat = PartyFlat.new
    authorize @party_flat
  end

  def create
    @party_flat = PartyFlat.new(party_flat_params)
    @party_flat.user = current_user
    authorize @party_flat
    if @party_flat.save
      redirect_to party_flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    authorize @party_flat
  end

  def edit
    authorize @party_flat
  end

  def update
    authorize @party_flat
    if @party_flat.update(party_flat_params)
      redirect_to party_flat_path(@party_flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @party_flat
    @party_flat.destroy
    redirect_to party_flats_path, status: :see_other
  end

  private

  def party_flat_params
    params.require(:party_flat).permit(:localisation, :people_capacity, :description, :bed_capacity, :number_of_room, :picture_url, :agrement_list, :id_users)
  end

  def set_party_flat
    @party_flat = PartyFlat.find(params[:id])
  end
end
