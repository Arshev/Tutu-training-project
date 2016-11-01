class RenameColumnInRailwayStationRoutes < ActiveRecord::Migration[5.0]
  def change
    rename_column :railway_stations_routes, :sort_station_id, :number_station
  end
end
