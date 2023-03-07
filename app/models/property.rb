class Property < ApplicationRecord
  belongs_to :property_type
  belongs_to :city
  has_one_attached :image

  validates :city_id, :property_type_id, presence: true
end
