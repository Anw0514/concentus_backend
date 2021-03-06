class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :bio
      t.string :yt_video
      t.belongs_to :user, foreign_key: true
      t.integer :zip

      t.timestamps
    end
  end
end
