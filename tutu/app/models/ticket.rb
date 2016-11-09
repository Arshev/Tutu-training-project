class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :user
  belongs_to :departure_station, class_name: 'RailwayStation', foreign_key: :departure_station_id
  belongs_to :arrival_station, class_name: 'RailwayStation', foreign_key: :arrival_station_id

  validates :serial_number, presence: true
  before_validation :set_number, on: :create

  private

  def set_number
    self.serial_number = ["a".."z", "A".."Z", "0".."9"].map(&:to_a).flatten.sample(8).join
  end
end
