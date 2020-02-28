class Review < ApplicationRecord
  belongs_to :shop
  validates :frequency,presence: true
  validates :attitude,presence: true
  validates :waiting_time,presence: true
end
