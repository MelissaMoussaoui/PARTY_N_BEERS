class AddNameToPartyFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :party_flats, :name, :string
  end
end
