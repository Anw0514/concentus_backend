class CreateBandMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :band_members do |t|
      t.belongs_to :member, polymorphic: true, index: true
      t.string :role
      t.belongs_to :band, foreign_key: true

      t.timestamps
    end
  end
end
