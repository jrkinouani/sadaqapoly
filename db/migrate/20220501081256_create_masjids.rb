class CreateMasjids < ActiveRecord::Migration[6.0]
  def change
    create_table :masjids do |t|
      t.string :name

      t.timestamps
    end
  end
end
