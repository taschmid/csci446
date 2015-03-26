class AddPetStatusToPets < ActiveRecord::Migration
  def change
    add_column :pets, :pet_status, :string
  end
end
