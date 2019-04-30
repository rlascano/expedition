class RemoveAddressIdFromEnterprises < ActiveRecord::Migration[5.2]
  def change
    remove_column :enterprises, :address_id
  end
end
