class AddNumberWagonToWagons < ActiveRecord::Migration[5.0]
  def change
    add_column :wagons, :number_wagon, :integer
  end
end
