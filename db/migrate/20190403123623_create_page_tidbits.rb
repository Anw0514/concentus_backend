class CreatePageTidbits < ActiveRecord::Migration[5.2]
  def change
    create_table :page_tidbits do |t|
      t.belongs_to :tidbit, foreign_key: true
      t.references :page, polymorphic: true, index: true

      t.timestamps
    end
  end
end
