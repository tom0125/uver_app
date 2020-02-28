class Area < ApplicationRecord
  has_many :shops,through: :shop_areas
  has_many :shop_areas
end
