class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.string :race
      t.string :description
      t.integer :age
      t.string :size
      t.references :shelter, foreign_key: true

      t.timestamps
    end
  end
end
