class Wagon < ApplicationRecord
  belongs_to :train

  validates :type_wagon, :quantity_top_place, :quantity_down_place, presence: true
  validates :number_wagon, uniqueness: true

  before_validation :set_number

  scope :economy, -> { where(type:'EconomyWagon')}
  scope :coupe, -> { where(type:'CoupeWagon')}
  scope :sv, -> { where(type:'SvWagon')}
  scope :seating, -> { where(type:'SeatingWagon')}

  private
  
  def set_number
    
    self.number_wagon = Wagon.last.number_wagon + 1

  end
end
