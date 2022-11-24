class AddPriceToPartyFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :party_flats, :price, :float
  end
end
