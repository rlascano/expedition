class CreateEnterprises < ActiveRecord::Migration[5.2]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :cuit_number

      t.timestamps
    end
  end
end
