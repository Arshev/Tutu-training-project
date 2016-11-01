class AddColumnsArrivalTimeToRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations_routes, :arrival, :text
    add_column :railway_stations_routes, :departure, :text
  end
end
