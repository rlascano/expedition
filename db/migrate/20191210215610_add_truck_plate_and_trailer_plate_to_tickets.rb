class AddTruckPlateAndTrailerPlateToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :truck_plate, :string
    add_column :tickets, :trailer_plate, :string
  end
end
