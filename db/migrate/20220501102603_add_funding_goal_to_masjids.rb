class AddFundingGoalToMasjids < ActiveRecord::Migration[6.0]
  def change
    add_column :masjids, :funding_goal, :float
  end
end
