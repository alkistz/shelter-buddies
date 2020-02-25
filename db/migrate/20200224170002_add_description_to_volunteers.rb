class AddDescriptionToVolunteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteers, :description, :string
  end
end
