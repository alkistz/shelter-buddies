class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :time_slot
      t.references :volunteer, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
