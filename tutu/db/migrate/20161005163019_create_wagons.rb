class CreateWagons < ActiveRecord::Migration[5.0]
  def change
    create_table :wagons do |t|
      t.string :type_wagon
      t.integer :quantity_top_place
      t.integer :quantity_down_place
      t.integer :train_id
      t.timestamps
    end
  end
end
