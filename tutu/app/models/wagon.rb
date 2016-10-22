class Wagon < ApplicationRecord
  belongs_to :train

  validates :type_wagon, :quantity_top_place, :quantity_down_place, presence: true
  validates :number_wagon, uniqueness: true

  before_validation :set_number

  private
  
  def set_number
    
    self.number_wagon = Wagon.last.number_wagon + 1

  end
end
