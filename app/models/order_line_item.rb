class OrderLineItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  validates :quantity, presence: true
end
