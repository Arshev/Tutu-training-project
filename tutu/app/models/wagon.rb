class Wagon < ApplicationRecord
  belongs_to :train

  validates :type_wagon, :quantity_top_place, :quantity_down_place, presence: true
  validates :set_number, uniqueness: true

  before_create :set_number

  private

  def set_number
    x = 0
    self.number_wagon = x + 1
  end
end
