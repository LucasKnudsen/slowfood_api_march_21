class MenuItem < ApplicationRecord
  validates_presence_of :title, :price
  has_many :order_items
end
