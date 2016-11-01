class AddColumnForWagonsTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :wagons, :top_seats, :integer
    add_column :wagons, :bottom_seats, :integer
    add_column :wagons, :side_top_seats, :integer
    add_column :wagons, :side_bottom_seats, :integer
    add_column :wagons, :seating_seats, :integer
    add_column :wagons, :type, :string
  end
end
