class AddUserDataToTickets < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :passport, :text
    add_column :tickets, :user_name, :text
  end
end
