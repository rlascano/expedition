class AddIndexNameToEnterprises < ActiveRecord::Migration[5.2]
  def change
    add_index :enterprises, :name
  end
end
