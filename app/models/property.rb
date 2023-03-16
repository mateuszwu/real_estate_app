class Property < ApplicationRecord
  belongs_to :city
  belongs_to :property_type
  belongs_to :user
  has_one_attached :image

  validates :city_id, :description, :price, :property_type_id, :title, presence: true
end
