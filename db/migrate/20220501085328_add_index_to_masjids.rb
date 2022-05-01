class AddIndexToMasjids < ActiveRecord::Migration[6.0]
  def change
    add_reference :masjids, :user , foreign_key: true
  end
end
