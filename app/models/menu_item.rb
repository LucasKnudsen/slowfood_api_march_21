class MenuItem < ApplicationRecord
  validates_presence_of :title, :price, :category
  has_many :order_items
end
