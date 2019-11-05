class CreateTicketDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_details do |t|
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :tare
      t.integer :gross
      t.integer :net
      t.datetime :enter
      t.datetime :exit
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
