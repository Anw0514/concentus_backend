class CreateAttributePages < ActiveRecord::Migration[5.2]
  def change
    create_table :attribute_pages do |t|
      t.belongs_to :attribute, foreign_key: true
      t.references :page, polymorphic: true, foreign_key: true

      t.timestamps
    end
  end
end
