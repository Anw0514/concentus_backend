class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :sender, foreign_key: true
      t.references :recipient, foreign_key: true

      t.timestamps
    end
  end
end
