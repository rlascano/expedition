class AddAddressIdToEnterprises < ActiveRecord::Migration[5.2]
  def change
    add_column :enterprises, :address_id, :integer
  end
end
