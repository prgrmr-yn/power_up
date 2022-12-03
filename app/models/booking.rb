class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :powerbank
  validates :status,
            acceptance:
            { accept: ["Booked", "Pending", "Declined"] }
end
