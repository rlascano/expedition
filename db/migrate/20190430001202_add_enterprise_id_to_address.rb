class AddEnterpriseIdToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :enterprise_id, :integer
  end
end
