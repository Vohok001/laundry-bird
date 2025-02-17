class Service < ApplicationRecord
  has_many :service_variants
  validates :name, presence: true
  validates :description, presence: true
end
