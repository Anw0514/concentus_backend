class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :day, foreign_key: true
      t.references :act, polymorphic: true, index: true

      t.timestamps
    end
  end
end
