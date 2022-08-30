class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :status
      t.string :user_position_x
      t.string :user_position_y
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
