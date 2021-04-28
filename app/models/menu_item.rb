class MenuItem < ApplicationRecord
  validates_presence_of :title, :price
end
