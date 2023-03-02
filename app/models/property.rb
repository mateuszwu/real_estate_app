class Property < ApplicationRecord
  belongs_to :property_type
  belongs_to :city

  validates :city_id, :property_type_id, presence: true
end
