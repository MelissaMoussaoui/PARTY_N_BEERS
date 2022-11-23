class PartyFlat < ApplicationRecord
    belongs_to :user
    has_many :bookings, dependent: :destroy

    geocoded_by :localisation
    after_validation :geocode, if: :will_save_change_to_localisation?
end