class AddFieldToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :description, :string
  end
end
