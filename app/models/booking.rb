class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party_flat
end
