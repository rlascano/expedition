class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :client, foreign_key: true
      t.integer :carrier, foreign_key: true
      t.references :trucker, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :tare
      t.integer :gross
      t.datetime :enter
      t.datetime :exit
      t.text :observations

      t.timestamps
    end
    add_foreign_key :tickets, :enterprises, column: :client_id
    add_foreign_key :tickets, :enterprises, column: :carrier_id
  end
end
