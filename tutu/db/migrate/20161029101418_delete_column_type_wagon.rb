class DeleteColumnTypeWagon < ActiveRecord::Migration[5.0]
  def change
    remove_column :wagons, :type_wagon
  end
end
