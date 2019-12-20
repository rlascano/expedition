class RemoveObservationsFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :observations
  end
end
