class AddFieldsToSale < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :business_day, :date
    add_column :sales, :total_qty, :int
    add_column :sales, :total_sales, :decimal
    add_column :sales, :total_cost, :decimal
    add_column :sales, :item_id, :int
  end
end
