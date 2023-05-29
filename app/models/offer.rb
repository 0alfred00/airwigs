class Offer < ApplicationRecord
  validates :title, :description, :color, :length, :size, :style, presence: true
  # belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, uniqueness: true
  validates :size, inclusion: { in: ["S", "M", "L"], allow_nil: false }
end
