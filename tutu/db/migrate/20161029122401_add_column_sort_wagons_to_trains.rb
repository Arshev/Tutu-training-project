class AddColumnSortWagonsToTrains < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :sort_wagons, :boolean
  end
end
