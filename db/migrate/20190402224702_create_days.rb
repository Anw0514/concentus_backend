class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.belongs_to :venue, foreign_key: true
      t.date :day_of_performance

      t.timestamps
    end
  end
end
