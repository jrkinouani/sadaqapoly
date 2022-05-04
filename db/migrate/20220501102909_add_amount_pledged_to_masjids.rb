class AddAmountPledgedToMasjids < ActiveRecord::Migration[6.0]
  def change
    add_column :masjids, :amount_pledged, :float
  end
end
