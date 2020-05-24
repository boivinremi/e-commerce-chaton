class Item < ApplicationRecord
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true

  # associations
  has_many :stores
  has_many :carts, through: :stores
  has_one_attached :image
end
