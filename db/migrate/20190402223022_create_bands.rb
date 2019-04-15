class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.integer :zip
      t.string :name
      t.string :bio
      t.string :yt_video
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
