class RemoveProductCategoryTareGrossEnterExitFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :product_id
    remove_column :tickets, :category_id
    remove_column :tickets, :tare
    remove_column :tickets, :gross
    remove_column :tickets, :enter
    remove_column :tickets, :exit     
  end
end
