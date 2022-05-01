class CreatePacks < ActiveRecord::Migration[6.0]
  def change
    create_table :packs do |t|
      t.string :name
      t.integer :price
      t.references :masjid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
