class CreateBandMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :band_members do |t|
      t.belongs_to :musician, foreign_key: true
      t.belongs_to :band, foreign_key: true

      t.timestamps
    end
  end
end
