class RemovePictureUrlFromPartyFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :party_flats, :picture_url
  end
end
