class AddUserToTickets < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :users, index: true
  end
end
