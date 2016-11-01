class Wagon < ApplicationRecord
  belongs_to :train

  validates :type, :quantity_top_place, :quantity_down_place, presence: true
  validates :number_wagon, uniqueness: { scope: :train_id }

  before_validation :set_number

  default_scope{ order(:number_wagon) }
  scope :economy, -> { where(type:'EconomyWagon')}
  scope :coupe, -> { where(type:'CoupeWagon')}
  scope :sv, -> { where(type:'SvWagon')}
  scope :seating, -> { where(type:'SeatingWagon')}
  scope :sort_head, -> { reverse_order(:number_wagon) }

  private
  
  def set_number
    max_number = train.wagons.maximum(:number_wagon) || 0
    self.number_wagon = max_number + 1
  end
end
