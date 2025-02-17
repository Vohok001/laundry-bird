class ServiceVariant < ApplicationRecord
  belongs_to :service
  has_many :order_items
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
end
