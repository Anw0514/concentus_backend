class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :sender, index: true
      t.references :recipient, index: true
      t.boolean :sender_deleted, default: false
      t.boolean :recipient_deleted, default: false
      t.string :content
      t.string :subject

      t.timestamps
    end
  end
end
