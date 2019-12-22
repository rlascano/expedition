class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.string :description
      t.belongs_to :ticket

      t.timestamps
    end
  end
end
