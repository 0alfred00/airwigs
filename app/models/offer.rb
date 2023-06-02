class Offer < ApplicationRecord
  validates :title, :description, :color, :length, :size, :style, presence: true
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :size, inclusion: { in: ["S", "M", "L"], allow_nil: false }
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
