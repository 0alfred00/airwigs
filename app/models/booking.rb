class Booking < ApplicationRecord
  validates :start_date, :end_date, presence: true
  belongs_to :user
  belongs_to :offer
  validates :size, inclusion: { in: ["reserved", "pending", "booked"], allow_nil: false }
end
