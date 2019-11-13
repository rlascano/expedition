class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :client
      t.integer :carrier
      t.references :trucker, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :tare
      t.integer :gross
      t.datetime :enter
      t.datetime :exit
      t.text :observations

      t.timestamps
    end
  end
end
