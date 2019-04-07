class AddLastNameToTruckers < ActiveRecord::Migration[5.2]
  def up
    add_column :truckers, :last_name, :string
  end

  def down
    remove_column :truckers, :last_name
  end  
end
