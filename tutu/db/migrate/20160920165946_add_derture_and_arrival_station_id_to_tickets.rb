class AddDertureAndArrivalStationIdToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :departure_station_id, :integer
    add_column :tickets, :arrival_station_id, :integer
  end
end
