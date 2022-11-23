class AddCoordinatesToPartyFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :party_flats, :latitude, :float
    add_column :party_flats, :longitude, :float
  end
end
