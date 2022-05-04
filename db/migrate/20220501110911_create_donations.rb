class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.float :price
      t.references :pack, index: true, foreign_key: true

      t.timestamps
    end
  end
end
