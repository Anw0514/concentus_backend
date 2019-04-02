class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.integer :zip
      t.string :name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
