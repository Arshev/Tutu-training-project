class AddSortStationIdToRailwayStationRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations_routes, :sort_station_id, :integer
  end
end
