class Wagon < ApplicationRecord
  belongs_to :train

  validates :type_wagon, :quantity_top_place, :quantity_down_place, presence: true
end
