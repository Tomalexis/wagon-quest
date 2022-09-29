class AddClearedToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :cleared, :boolean
  end
end
