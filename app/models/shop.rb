class Shop < ApplicationRecord
  #validates :name,uniqueness: true,presence: true,length: { maximum:60 }
  #validates :address,presence:  true
  has_many :reviews,:dependent => :delete_all
  has_many :shop_cautions
  has_many :cautions,through: :shop_cautions
  has_many :areas,through: :shop_areas
  has_many :shop_areas
  accepts_nested_attributes_for :reviews
  accepts_nested_attributes_for :shop_cautions
  accepts_nested_attributes_for :shop_areas
  
  
  
end
