class Order < ApplicationRecord
  belongs_to :user
  belongs_to :time_slot, optional: true
  belongs_to :address, optional: true
  has_many :order_items
  has_many :service_variants, through: :order_items
  validates :status, presence: true, inclusion: { in: ['pending', 'completed', 'cancelled'] }

  def total_price
    order_items.sum { |item| item.total_price }
  end
end
