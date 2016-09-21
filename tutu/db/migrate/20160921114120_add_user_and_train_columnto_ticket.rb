class AddUserAndTrainColumntoTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :user_id, :integer
    add_column :tickets, :train_id, :integer
  end
end
