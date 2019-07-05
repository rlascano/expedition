class AddCarrierIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :carrier_id, :integer
  end
end
