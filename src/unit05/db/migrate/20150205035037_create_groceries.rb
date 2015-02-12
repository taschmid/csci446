class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :name
      t.string :department
      t.integer :price

      t.timestamps
    end
  end
end
