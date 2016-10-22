class SeatingCarriage < Carriage
  validates :seating_seats, presence: true
end