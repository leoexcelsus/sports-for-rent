class Product < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo

  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
end
