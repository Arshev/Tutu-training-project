class RailwayStation < ApplicationRecord
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :tickets, foreign_key: :arrival_station_id
  has_many :tickets, foreign_key: :departure_station_id

  validates :title, presence: true
end
