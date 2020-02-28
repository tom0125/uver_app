class ShopReview < ApplicationRecord
  belongs_to :shop
  belongs_to :review
end
