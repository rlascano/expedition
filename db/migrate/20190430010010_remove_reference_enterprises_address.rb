class RemoveReferenceEnterprisesAddress < ActiveRecord::Migration[5.2]
  def change
    remove_reference :enterprises, :address
  end
end
