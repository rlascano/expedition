class ChangeTruckerNameColumn < ActiveRecord::Migration[5.2]
  def up
    rename_column :truckers, :name, :first_name
  end

  def down
    rename_column :truckers, :first_name, :name
  end
end
