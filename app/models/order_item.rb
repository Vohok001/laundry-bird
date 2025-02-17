class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :service_variant
  validates :quantity, numericality: { greater_than: 0 }

  def total_price
    service_variant.price * quantity
  end
end
