class CreatePacks < ActiveRecord::Migration[6.0]
  def change
    create_table :packs do |t|
      t.string :name , null: false
      t.integer :masjid_id , null: false
      t.integer :price , null: false

      t.timestamps
    end
    add_index :packs, :masjid_id
  end
end
