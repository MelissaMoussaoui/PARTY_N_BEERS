class PartyFlat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
