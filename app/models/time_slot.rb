class TimeSlot < ApplicationRecord
  has_many :orders
  validates :start_time, presence: true
  validates :end_time, presence: true
end
