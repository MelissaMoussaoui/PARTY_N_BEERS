class CreatePartyFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :party_flats do |t|
      t.string :localisation
      t.text :description
      t.integer :surface
      t.integer :people_capacity
      t.integer :bed_capacity
      t.integer :number_of_room
      t.string :picture_url
      t.string :agrement_list
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
