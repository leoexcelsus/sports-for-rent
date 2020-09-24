class Product < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
end
