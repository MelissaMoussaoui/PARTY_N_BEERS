class PartyFlat < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  has_many :bookings
end
=======
    belongs_to :user
    has_many :bookings, dependent: :destroy

    geocoded_by :localisation
    after_validation :geocode, if: :will_save_change_to_localisation?
end
>>>>>>> 9c2022cebc7dae36fe8bf80f9b77f3e8bf511549
