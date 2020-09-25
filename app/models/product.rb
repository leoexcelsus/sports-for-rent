class Product < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_description,
    against: [ :description ],
    using: {
      tsearch: { prefix: true }
    }
end
