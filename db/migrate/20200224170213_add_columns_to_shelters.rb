class AddColumnsToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :name, :string
    add_column :shelters, :address, :string
    add_column :shelters, :description, :string
  end
end
