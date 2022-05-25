class RenameSaleToDailyItemSale < ActiveRecord::Migration[6.1]
  def change
    rename_table :sales, :daily_item_sales
  end
end
