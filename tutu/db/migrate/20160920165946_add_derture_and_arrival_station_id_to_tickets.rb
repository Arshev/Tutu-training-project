class AddDertureAndArrivalStationIdToTickets < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :tickets, :railway_station
  end
end
