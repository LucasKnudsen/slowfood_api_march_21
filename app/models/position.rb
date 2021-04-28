class Position < ApplicationRecord
  validates_presence_of :title, :price
end
