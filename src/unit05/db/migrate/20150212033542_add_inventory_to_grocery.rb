class AddInventoryToGrocery < ActiveRecord::Migration
  def change
  	add_column :groceries, :inventory, :integer
  end
end
