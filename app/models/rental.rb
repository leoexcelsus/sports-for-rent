class Rental < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :begin_date, presence: true
  validates :end_date, presence: true
  validates :rental_price, presence: true
  validates :product, presence: true
  validates :user, presence: true

  validates :price, numericality: { greater_than: 0 }
  validate :end_date_must_be_greater_than_begin_date

  def end_date_must_be_greater_than_begin_date
    if begin_date > end_date && begin_date < Date.today
      errors.add(:begin_date, "can't be in the past and must be before end date")
    end
  end

end
