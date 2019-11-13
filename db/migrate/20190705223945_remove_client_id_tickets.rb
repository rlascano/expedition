class RemoveClientIdTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :client
  end
end
