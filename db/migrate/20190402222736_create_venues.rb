class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :name
      t.integer :zip
      t.string :bio
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
