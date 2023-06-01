class Booking < ApplicationRecord
  validates :start_date, :end_date, presence: true
  belongs_to :user
  belongs_to :offer
  validates :status, inclusion: { in: ["accepted", "pending", "declined"], allow_nil: false }
end
