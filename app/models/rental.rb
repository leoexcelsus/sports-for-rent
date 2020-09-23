class Rental < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :begin_date, presence: true
  validates :end_date, presence: true
  validates :rental_price, presence: true
  validates :product, presence: true
  validates :user, presence: true
end
