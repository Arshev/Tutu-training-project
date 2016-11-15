class RailwayStation < ApplicationRecord
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :arrival_tickets, class_name: 'Ticket', foreign_key: :arrival_station_id
  has_many :departure_tickets, class_name: 'Ticket', foreign_key: :departure_station_id

  validates :title, presence: true

  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.position').joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def update_time_arrival(route, arrival)
    station_route = station_route(route)
    station_route.update(arrival: arrival) if station_route
  end

  def update_time_departure(route, departure)
    station_route = station_route(route)
    station_route.update(departure: departure) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def arrival(route)
    station_route(route).try(:arrival)
  end

  def departure(route)
    station_route(route).try(:departure)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end

end