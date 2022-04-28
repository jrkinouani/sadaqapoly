class CreateMasjids < ActiveRecord::Migration[6.0]
  def change
    create_table :masjids do |t|
      t.string :name
      t.string :city
      t.text :desc
      t.integer :funding_goal
      t.integer :amount_pledged
      t.date :end_date
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
