class ChangeTruckerExpirationDateColumnName < ActiveRecord::Migration[5.2]
  def up
    rename_column :truckers, :expirationDate, :carnet_expiration_date
  end

  def down
    rename_column :truckers, :carnet_expiration_date, :expirationDate
  end
end
