class AddIndexTruckersDocumentColumn < ActiveRecord::Migration[5.2]
  def up
    add_index :truckers, :document, unique: true
  end

  def down
    remove_index :truckers, :document
  end
end
