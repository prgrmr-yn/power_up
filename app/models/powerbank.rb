class Powerbank < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
