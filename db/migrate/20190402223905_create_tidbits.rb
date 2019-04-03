class CreateTidbits < ActiveRecord::Migration[5.2]
  def change
    create_table :tidbits do |t|
      t.string :value
      t.string :type

      t.timestamps
    end
  end
end
