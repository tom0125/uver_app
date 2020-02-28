class Caution < ApplicationRecord
  has_many :shop_cautions
  has_many :shops,through: :shop_cautions
end
