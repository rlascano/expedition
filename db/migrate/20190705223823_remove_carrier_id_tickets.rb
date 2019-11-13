class RemoveCarrierIdTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :carrier
  end
end
