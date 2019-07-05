class RemoveCarrierIdTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :carrier_id
  end
end
